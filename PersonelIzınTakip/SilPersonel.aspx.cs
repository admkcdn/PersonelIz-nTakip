using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonelIzınTakip
{
    public partial class SilPersonel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataSet1TableAdapters.PersonellerTableAdapter adapter = new DataSet1TableAdapters.PersonellerTableAdapter();
            adapter.PersonelSil(x);
            adapter.PersonelIzinleriSil(x);
            adapter.PersonelTalepSil(x);
            Response.Redirect("Default.aspx");
        }
    }
}