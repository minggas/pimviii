using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Data.OleDb;

namespace UnipTaskManager
{
    public partial class UserPage : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserRa"] == null) {
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}