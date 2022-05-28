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
    public partial class PersonelKayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.PersonellerTableAdapter adapter = new DataSet1TableAdapters.PersonellerTableAdapter();
            int year = Calendar1.SelectedDate.Year;

            int today = DateTime.Now.Year;

            int result = today - year;

            int izin = 0;

            if (result >= 1 && result <= 5)
            {
                izin = 14;
            }
            else if (result >= 6 && result <= 15)
            {
                izin = 20;
            }
            else if (result > 15)
            {
                izin = 26;
            }
            adapter.PersonelEkle(TextBox1.Text, TextBox2.Text, Calendar1.SelectedDate.ToString(), izin, DropDownList1.SelectedIndex + 1, DropDownList2.SelectedIndex + 1);

            SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=IzinTakip;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Personeller where Ad='" + TextBox1.Text + "' and Soyad='" + TextBox2.Text + "' and BaslamaTarihi='" + Calendar1.SelectedDate.ToString("yyyy-MM-dd")+"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                adapter.KayitOlustur(TextBox1.Text, TextBox2.Text, Convert.ToInt32(dr["ID"].ToString()), DropDownList2.SelectedIndex + 1, DropDownList1.SelectedIndex + 1);
                Response.Redirect("PersonelKayit.aspx");
            }
            else
            {
                Response.Redirect("Error.aspx");
            }


        }
    }
}