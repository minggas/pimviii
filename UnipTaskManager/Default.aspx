<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UnipTaskManager._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cover-container d-flex h-100 p-3 mx-auto flex-column text-center">
        <main role="main" class="inner cover">
            <h1 class="cover-heading" id="btn_login">UNIP - Task Manager</h1>
            <p class="lead">Bem vindo ao Task Manager, o WebApp para controle de suas atividades na UNIP.</p>

            <br />
            <asp:Label ID="lblmsg1" CssClass="alert alert-success" style="float:right;margin-top:-5%;" runat="server" ></asp:Label>
            <br />

            <p class="lead">
                <asp:Button ID="btn_login" CssClass="btn btn-lg btn-primary" runat="server" Text="Login" PostBackUrl="~/Login.aspx" />
            </p>
        </main>
    </div>
</asp:Content>
