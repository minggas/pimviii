using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UnipTaskManager
{
    public partial class Login : Page
    {
        string conexaoAccess = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Logar(object sender, EventArgs e)
        {

        }
    }
}