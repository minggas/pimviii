using System;
using System.Configuration;
using System.Data.OleDb;
using System.Web.UI;

namespace UnipTaskManager
{
    public partial class AddTarefa : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserRa"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void Selection_Change(object sender, EventArgs e)
        {

        }

        protected void addTask_Click(object sender, EventArgs e)
        {


            String tipo = sltTipo.Text;
            String datalimite = txtDataLimite.Text;
            String descricao = txtDescricao.Text;
            String ra = (string)Session["UserRa"];

            try
            {
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();

                using (OleDbConnection connection = new OleDbConnection(cs))
                {
                    string query = "INSERT INTO Tarefa(descricao,tipo,datalimite,ra)VALUES('" + descricao + "','" + tipo + "','" + datalimite + "','" + ra + "')";

                    OleDbCommand command = new OleDbCommand(query, connection);


                    command.Connection.Open();
                    int state = command.ExecuteNonQuery();

                    if (state > 0)
                    {
                        Response.Redirect("~/UserPage.aspx");
                        command.Connection.Close();
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Falha", "alert('Não foi possivel salvar os dados, \n tente novamente mais tarde por favor!!');", true);
                        command.Connection.Close();
                    }


                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Falha", "alert('Não foi possivel adicionar, tente novamente mais tarde!! \n" + ex.Message + "');", true);

            }

        }
    }
}