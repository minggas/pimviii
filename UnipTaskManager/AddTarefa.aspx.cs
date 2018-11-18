using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            //pegar dados e salvar no db.

            String tipo = sltTipo.Text;
            String data = txtDataLimite.Text;
            String descricao = txtDescricao.Text;
            String ra = dplRA.Text;

            String sql;
            sql = "INSERT INTO Tarefa(tipo, datalimite, descricao, ra) VALUES('"+tipo+"','"+data+"','"+descricao+"','"+ra+"')";



        }
    }
}