<%@ Page Title="User Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="UnipTaskManager.UserPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center">Tarefas</h2>
    <asp:Button ID="btnAdd" CommandName="AddNew" runat="server" Text="Inserir nova tarefa" PostBackUrl="~/AddTarefa.aspx" />
    <br />
    <asp:Label ID="lblmsg1" CssClass="alert alert-success" style="float:right;margin-top:-5%;" runat="server"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="dsTaskPim">
    </asp:GridView>
    <asp:SqlDataSource ID="dsTaskPim" runat="server"></asp:SqlDataSource>
    <br />
    
</asp:Content>
