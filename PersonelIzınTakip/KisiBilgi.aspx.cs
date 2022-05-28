using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PersonelIzınTakip
{
    public partial class KisiBilgi : System.Web.UI.Page
    {
        string connectString = "Data Source=localhost;Initial Catalog=IzinTakip;Integrated Security=True";
        int id = 0;
        string name = "";
        string surname = "";
        string departman = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ID"]);
            SqlConnection conn = new SqlConnection(connectString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Personeller Where ID=" + id, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                name = reader["Ad"].ToString();
                surname = reader["Soyad"].ToString();
                departman = reader["DepartmanID"].ToString();
                adsoyad.Text = name + " " + surname;
                headertitle.Text = name + " " + surname;
                izingunulbl.Text = reader["ToplamIzinGunu"].ToString();
            }
        }

        protected void talepEtBtn_Click(object sender, EventArgs e)
        {
            if (talepizintxt.Text != "")
            {
                DataSet1TableAdapters.PersonelTalepTableAdapter talep = new DataSet1TableAdapters.PersonelTalepTableAdapter();
                talep.TalepEkle(id, name, surname, departman, Convert.ToInt32(talepizintxt.Text));
                errorLabel.Text = "Talebiniz başarıyla oluşturulmuştur.";
                talepEtBtn.Enabled = false;
            }
            else
            {
                errorLabel.Text = "Lütfen boş bırakmayınız.";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}