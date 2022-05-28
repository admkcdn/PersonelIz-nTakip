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
    public partial class TalepOnayla : System.Web.UI.Page
    {
        string connectIndex = "Data Source=localhost;Initial Catalog=IzinTakip;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            int izingunu = 0;

            SqlConnection conn = new SqlConnection(connectIndex);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select ToplamIzinGunu from Personeller Where ID=" + id, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                izingunu = izingunu + Convert.ToInt32(reader["ToplamIzinGunu"].ToString());
            }
            conn.Close();

            SqlConnection conn2 = new SqlConnection(connectIndex);
            conn2.Open();
            SqlCommand cmd2 = new SqlCommand("select * from PersonelTalep Where PersonelID=" + id,conn2);
            SqlDataReader dr = cmd2.ExecuteReader();
            if (dr.Read())
            {
                izingunu += Convert.ToInt32(dr["PersonelTalep"]);
            }
            conn2.Close();

            DataSet1TableAdapters.PersonelIzınleriTableAdapter pers = new DataSet1TableAdapters.PersonelIzınleriTableAdapter();
            pers.izinpersoneldeGüncelle(izingunu,id);


            pers.personeltalepsil(id);

            Response.Redirect("Talepler.aspx");
        }
    }
}