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
using System.Configuration;

namespace UnipTaskManager
{
    public partial class UserPage : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridview();
            }
            
        }
        protected void BindGridview()
        {
            string ra = (string) Session["UserRa"];
            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            con.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.CommandText = "SELECT * FROM Tarefa WHERE ra=@ra";
            cmd.Parameters.AddWithValue("@ra", Convert.ToInt32(ra));
            cmd.Connection = con;
            OleDbDataReader rd = cmd.ExecuteReader();
            gvTarefas.DataSource = rd;
            gvTarefas.DataBind();
            rd.Close();

        }
      

        protected void gvTarefas_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = gvTarefas.EditIndex;
            GridViewRow row = gvTarefas.Rows[index];
            int productid = Convert.ToInt32(gvTarefas.DataKeys[e.RowIndex].Values["ID"].ToString());
            TextBox txtTarefatipo = (TextBox)gvTarefas.Rows[e.RowIndex].FindControl("txtTarefatipo");
            TextBox txtDataLimite = (TextBox)gvTarefas.Rows[e.RowIndex].FindControl("txtDataLimite");
            TextBox txtDescricao = (TextBox)gvTarefas.Rows[e.RowIndex].FindControl("txtDescricao");
            string ra = (string)Session["UserRa"];
            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            con.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.CommandText = "UPDATE Tarefa SET descricao=@descricao,tipo=@tipo,datalimite=@datalimite,ra=@ra WHERE ID=@id";
            cmd.Parameters.AddWithValue("@tipo", txtTarefatipo);
            cmd.Parameters.AddWithValue("@datalimite", txtDataLimite);
            cmd.Parameters.AddWithValue("@descricao", txtDescricao);
            cmd.Parameters.AddWithValue("@ra", Convert.ToInt32(ra));
            cmd.Parameters.AddWithValue("@id", productid);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            gvTarefas.EditIndex = -1;
            BindGridview();
        }
        protected void gvTarefas_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int productid = Convert.ToInt32(gvTarefas.DataKeys[e.RowIndex].Values["ID"].ToString());
            string ra = (string)Session["UserRa"];
            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            con.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.CommandText = "DELETE FROM Tarefa WHERE ID=@id";
            cmd.Parameters.AddWithValue("@id", productid);
            cmd.Connection = con;

            cmd.ExecuteNonQuery();
            gvTarefas.EditIndex = -1;
            BindGridview();
        }
    }
}