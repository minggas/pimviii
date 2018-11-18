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

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();

            using (OleDbConnection connection = new OleDbConnection(cs))
            {
                string query = "INSERT INTO Aluno(RA, nome, senha, curso)VALUES(@RA, @nome, @senha, @curso)";

                OleDbCommand command = new OleDbCommand(query, connection);
                command.Parameters.AddWithValue("@RA", ra);
                command.Parameters.AddWithValue("@nome", nome);
                command.Parameters.AddWithValue("@senha", senha);
                command.Parameters.AddWithValue("@curso", curso);

                command.Connection.Open();
                int state = command.ExecuteNonQuery();

                if (state > 0)
                {
                    Response.Redirect("~/Default.aspx?msg=Dados salvos com sucesso");
                    command.Connection.Close();
                }
                else
                {
                    lblMsg.Text = "Erro ao tentar salvar os dados no banco!";
                    command.Connection.Close();
                }


            }

        }
    }
}


