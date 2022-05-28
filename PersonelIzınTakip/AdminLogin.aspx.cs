using System;
using System.Linq;
using System.Data;

namespace PersonelIzınTakip
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminGiris_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.AdminDataTableAdapter adminDataTableAdapter = new DataSet1TableAdapters.AdminDataTableAdapter();
            var x = from y in adminDataTableAdapter.GetData()
                    where y.KullaniciID == Convert.ToInt32(kadi.Text)
                    && y.Sifre == sifretxt.Text
                    select y;

            if (x.Any())
            {
                var Z = x.ToArray();

                if (Z[0]["StatusID"].ToString() == "1" || Z[0]["StatusID"].ToString() == "2")
                {
                    string str = Z[0]["DepartmanID"].ToString();
                    Response.Redirect("Default.aspx?StatusID=" + Z[0]["StatusID"].ToString() +"&DepartmanID="+ Z[0]["DepartmanID"].ToString() +"&ID="+ Z[0]["KullaniciID"].ToString());
                }
                else if (Z[0]["StatusID"].ToString()=="3" || Z[0]["StatusID"].ToString() == "4")
                {
                    Response.Redirect("KisiBilgi.aspx?ID=" + Z[0]["KullaniciID"]);
                }
                else
                {
                    Label1.Text = "Hatalı kullanıcı adı veya parola";
                }
            }
        }
    }
}