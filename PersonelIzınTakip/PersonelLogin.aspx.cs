using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace PersonelIzınTakip
{
    public partial class PersonelLogin : System.Web.UI.Page
    {
        string connectString = "Data Source=localhost;Initial Catalog=IzinTakip;Integrated Security=True";
        List<string> adisql = new List<string>();
        List<string> soyadisql = new List<string>();
        List<int> idsql = new List<int>();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * From Personeller", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                adisql.Add(dr["Ad"].ToString());
                soyadisql.Add(dr["Soyad"].ToString());
                idsql.Add(Convert.ToInt32(dr["ID"].ToString()));
            }
            con.Close();
        }

        protected void btnPersonelGiris_Click(object sender, EventArgs e)
        {
            string kullaniciAdi = adi.Text;
            string sifrepage = Soyadi.Text;

            for (int i = 0; i < adisql.Count; i++)
            {
                if (adisql[i].ToString() == kullaniciAdi.ToString() && soyadisql[i].ToString() == sifrepage.ToString())
                {
                    Response.Redirect("KisiBilgi.aspx?ID=" + idsql[i]);
                }
                else
                {
                    Label1.Text = "Hatalı kullanıcı adı veya şifre";
                }
            }
            Label1.Text = "adı veya soyadı yanlış!";
        }
    }
}