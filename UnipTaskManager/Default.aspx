<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UnipTaskManager._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cover-container d-flex h-100 p-3 mx-auto flex-column text-center">
        <main role="main" class="inner cover">
            <h1 class="cover-heading">UNIP - Task Manager</h1>
            <p class="lead">Bem vindo ao Task Manager, o WebApp para controle de suas atividades na UNIP.</p>
            <p class="lead">
                <a class="btn btn-lg btn-primary" runat="server" href="~/Login">Login</a>
            </p>
        </main>
    </div>
</asp:Content>
