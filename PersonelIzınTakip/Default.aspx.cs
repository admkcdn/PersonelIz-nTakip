using System;
using System.Data;

namespace PersonelIzınTakip
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string status = Convert.ToString(Request.QueryString["StatusID"]);

            string departman = Convert.ToString(Request.QueryString["DepartmanID"]);


            if (status == "1")
            {
                DataSet1TableAdapters.PersonellerTableAdapter adapter = new DataSet1TableAdapters.PersonellerTableAdapter();
                Repeater1.DataSource = adapter.personelleriGetir();
                Repeater1.DataBind();
            }
            else if (status == "2" && departman == "1")
            {
                DataSet1TableAdapters.Personeller1TableAdapter adapter = new DataSet1TableAdapters.Personeller1TableAdapter();
                Repeater1.DataSource = adapter.GetDataStatus2Departman1();
                Repeater1.DataBind();
            }
            else if (status == "2" && departman == "2")
            {
                DataSet1TableAdapters.Personeller1TableAdapter adapter = new DataSet1TableAdapters.Personeller1TableAdapter();
                Repeater1.DataSource = adapter.GetDataStatus2Departman2();
                Repeater1.DataBind();
            }
            else if (status == "2" && departman == "3")
            {
                DataSet1TableAdapters.Personeller1TableAdapter adapter = new DataSet1TableAdapters.Personeller1TableAdapter();
                Repeater1.DataSource = adapter.GetDataStatus2Departman3();
                Repeater1.DataBind();
            }
            else if (status == "2" && departman == "4")
            {
                DataSet1TableAdapters.Personeller1TableAdapter adapter = new DataSet1TableAdapters.Personeller1TableAdapter();
                Repeater1.DataSource = adapter.GetDataStatus2Departman4();
                Repeater1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PersonelKayit.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Talepler.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string kullaniciID = Convert.ToString(Request.QueryString["ID"]);
            Response.Redirect("KisiBilgi.aspx?ID=" + kullaniciID);
        }
    }
}