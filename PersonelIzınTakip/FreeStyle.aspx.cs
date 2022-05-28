using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PersonelIzınTakip
{
    public partial class freeStyle : System.Web.UI.Page
    {
        List<int> izinler = new List<int>();
        string connectionString = "Data Source=localhost;Initial Catalog=IzinTakip;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"].ToString());
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
            if (!Page.IsPostBack)
            {
                BilgileriGoster();
            }
        }

        protected void grdKayitlar_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //((Label)e.Row.FindControl("lbl")).Visible = false;
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string IzinID = DataBinder.Eval(e.Row.DataItem, "IzinID").ToString();
                if (izinler.Contains(Convert.ToInt32(IzinID)))
                {
                    ((Button)e.Row.FindControl("btnGuncelle")).Visible = false;
                    //((Label)e.Row.FindControl("lbl")).Visible = true;
                    //((Label)e.Row.FindControl("lbl")).Text = "Zaten Mevcut";

                }
                ((Button)e.Row.FindControl("btnGuncelle")).CommandArgument = IzinID;
            }
        }

        public void BilgileriGoster()
        {

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Izinler", con))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    grdKayitlar.DataSource = ds.Tables[0];
                    grdKayitlar.DataBind();
                }
            }

        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            string IzinID = ((Button)sender).CommandArgument;
            int sayac = 0;
            int id = Convert.ToInt32(Request.QueryString["ID"].ToString());

            DataSet1TableAdapters.PersonelIzınleriTableAdapter pers = new DataSet1TableAdapters.PersonelIzınleriTableAdapter();
            string connectIndex0 = "Data Source=localhost;Initial Catalog=IzinTakip;Integrated Security=True";
            string sqlKomut0 = String.Format("select * from Personeller WHERE ID={0}", id);
            SqlConnection baglanti0 = new SqlConnection(connectIndex0);
            SqlCommand cmd0 = new SqlCommand(sqlKomut0);
            baglanti0.Open();
            cmd0.Connection = baglanti0;
            SqlDataReader dr0 = cmd0.ExecuteReader();
            if (dr0.Read())
            {
                sayac = sayac + Convert.ToInt32(dr0["ToplamIzinGunu"].ToString());
            }
            baglanti0.Close();

            string sqlKomut = String.Format("select * from Izinler WHERE IzinID={0}", IzinID);
            SqlConnection baglanti = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(sqlKomut);
            baglanti.Open();
            cmd.Connection = baglanti;
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                sayac = sayac + Convert.ToInt32(dr["IzinGunu"].ToString());
                pers.PersoneleİzinEkle(id, Convert.ToInt32(IzinID), Convert.ToInt32(dr["IzinGunu"].ToString()));
                pers.izinpersoneldeGüncelle(sayac, id);
            }
            else
            {

            }
            baglanti.Close();

            Response.Redirect("Default.aspx");
        }

    }
}