using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UnipTaskManager
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["msg"] != null)
            {
                lblmsg1.Text = Request.QueryString["msg"];
                btn_login.Visible = false;
            }
            else
            {
                lblmsg1.Visible = false;
            }
        }
    }
}