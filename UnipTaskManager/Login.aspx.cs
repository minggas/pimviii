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
            String senha = txtSenha.Text;
            String ra = txtRa.Text;

            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            con.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.CommandText = "SELECT * FROM Aluno WHERE ra=@ra AND senha=@senha";
            cmd.Parameters.AddWithValue("@ra", Convert.ToInt32(ra));
            cmd.Parameters.AddWithValue("@senha", senha);
            cmd.Connection = con;
            OleDbDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                rd.Close();
                Session["UserRa"] = txtRa.Text;
                Response.Redirect("UserPage");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Falha", "alert('Usuario não cadastrado, por favor fazer registro');", true);
            }
        }
    }
}