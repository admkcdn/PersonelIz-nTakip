﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace PersonelIzınTakip
{
    public partial class TalepReddet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);


            DataSet1TableAdapters.PersonelIzınleriTableAdapter pers = new DataSet1TableAdapters.PersonelIzınleriTableAdapter();
            pers.TalepIDileTalepSil(id);

            Response.Redirect("Talepler.aspx");
        }
    }
}