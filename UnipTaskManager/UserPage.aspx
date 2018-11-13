<%@ Page Title="User Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="UnipTaskManager.UserPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application User page.</h3>
    <p>Use this area to provide additional information.</p>
    <asp:GridView ID="listaTarefas" runat="server"></asp:GridView>
</asp:Content>
