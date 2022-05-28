using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace PersonelIzınTakip
{
    public partial class Izinler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"].ToString()); ;
            int sayac = 0;
            List<int> izinler = new List<int>();
            //------------------------------ Önceki izin günlerini getiriyor
            string connectIndex0 = "Data Source=localhost;Initial Catalog=IzinTakip;Integrated Security=True";
            string sqlKomut0 = String.Format("select * from Personeller WHERE ID={0}", id);
            SqlConnection baglanti0 = new SqlConnection(connectIndex0);
            SqlCommand cmd0 = new SqlCommand(sqlKomut0);
            baglanti0.Open();
            cmd0.Connection = baglanti0;
            SqlDataReader dr0 = cmd0.ExecuteReader();
            if (dr0.Read())
            {
                sayac = Convert.ToInt32(dr0["ToplamIzinGunu"].ToString());
            }



            //------------------------------- İzinleri önceden kontrol ediyor var mı yok mu diye
            string connectIndex1 = "Data Source=localhost;Initial Catalog=IzinTakip;Integrated Security=True";
            string sqlKomut1 = String.Format("select * from PersonelIzınleri WHERE PersonelID={0}", id);
            SqlConnection baglanti1 = new SqlConnection(connectIndex1);
            SqlCommand cmd1 = new SqlCommand(sqlKomut1);
            baglanti1.Open();
            cmd1.Connection = baglanti1;
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            {
                izinler.Add(Convert.ToInt32(dr1["IzınID"].ToString()));
            }
            baglanti1.Close();

            //------------------------------- 

            string connectIndex = "Data Source=localhost;Initial Catalog=IzinTakip;Integrated Security=True";
            List<int> selectedIndexes = new List<int>();

            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    selectedIndexes.Add(CheckBoxList1.Items.IndexOf(item) + 1);
                }
            }

            //-------------------------------

            SqlConnection baglanti = new SqlConnection(connectIndex);

            DataSet1TableAdapters.PersonelIzınleriTableAdapter pers = new DataSet1TableAdapters.PersonelIzınleriTableAdapter();
            for (int i = 0; i < selectedIndexes.Count; i++)
            {
                int checker = 0;
                foreach (int x in izinler)
                {
                    if (x == selectedIndexes[i])
                    {
                        checker++;
                    }
                }
                if (checker != 0)
                {
                    continue;
                }
                string sqlKomut = String.Format("select * from Izinler WHERE IzinID={0}", selectedIndexes[i]);
                SqlCommand cmd = new SqlCommand(sqlKomut);
                baglanti.Open();
                cmd.Connection = baglanti;
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    sayac = sayac + Convert.ToInt32(dr["IzinGunu"].ToString());
                    pers.PersoneleİzinEkle(id, selectedIndexes[i], Convert.ToInt32(dr["IzinGunu"].ToString()));
                }
                else
                {
                    Label1.Text = "elim boş";
                }
                baglanti.Close();
            }
            Label1.Text = sayac.ToString();
            pers.izinpersoneldeGüncelle(sayac, id);



            Response.Redirect("Default.aspx");
        }
    }
}