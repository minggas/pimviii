using System;
using System.Configuration;
using System.Data.OleDb;
using System.Web.UI;

namespace UnipTaskManager
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Cadastro(object sender, EventArgs e)
        {
            string nome = txtNome.Text;
            string ra = txtRa.Text;
            string curso = txtCurso.Text;
            string senha = txtSenha.Text;

            try
            {
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();

                using (OleDbConnection connection = new OleDbConnection(cs))
                {
                    string query = "INSERT INTO Aluno(RA, nome, senha, curso)VALUES('" + ra + "', '" + nome + "', '" + senha + "', '" + curso + "')";

                    OleDbCommand command = new OleDbCommand(query, connection);

                    command.Connection.Open();
                    int state = command.ExecuteNonQuery();

                    if (state > 0)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Sucesso", "alert('Cadastro realizado com sucesso!!');", true);
                        Response.Redirect("~/Login.aspx");
                        command.Connection.Close();
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Falha", "alert('Não foi possivel registrar, tente novamente mais tarde!!');", true);

                        command.Connection.Close();
                    }


                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Falha", "alert('Não foi possivel registrar, tente novamente mais tarde!! \n" + ex.Message + "');", true);

            }

        }
    }
}


