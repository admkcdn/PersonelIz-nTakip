using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonelIzınTakip
{
    public partial class Talepler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.PersonelTalepTableAdapter adapter = new DataSet1TableAdapters.PersonelTalepTableAdapter();
            Repeater1.DataSource = adapter.GetData();
            Repeater1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}