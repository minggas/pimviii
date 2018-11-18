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

        }

        protected void Selection_Change(object sender, EventArgs e)
        {

        }

        protected void addTask_Click(object sender, EventArgs e)
        {


            String tipo = sltTipo.Text;
            String data = txtDataLimite.Text;
            String descricao = txtDescricao.Text;
            String ra = dplRA.Text;

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();

            using (OleDbConnection connection = new OleDbConnection(cs))
            {
                string query = "INSERT INTO Tarefa(descricao,tipo,datalimite,ra)VALUES(@descricao,@tipo,@datalimite,@ra)";

                OleDbCommand command = new OleDbCommand(query, connection);
                command.Parameters.AddWithValue("@tipo", tipo);
                command.Parameters.AddWithValue("@datalimite", data);
                command.Parameters.AddWithValue("@descricao", descricao);
                command.Parameters.AddWithValue("@ra", ra);

                command.Connection.Open();
                int state = command.ExecuteNonQuery();

                if (state > 0) {
                    Response.Redirect("~/UserPage.aspx?msg=Dados salvos com sucesso");
                    command.Connection.Close();
                }
                else{
                    lblMsg.Text = "Erro ao tentar salvar os dados no banco!";
                    command.Connection.Close();
                }
                

            }

        }
    }
}