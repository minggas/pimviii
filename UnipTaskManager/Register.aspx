<%@ Page Title="Cadastrar Novo Aluno" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="UnipTaskManager.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center">
        <h2><%: Title %></h2>
        <div class="form-signin">
            <h3 class="h3 mb-3 font-weight-normal">Preencha os dados para efetuar seu cadastro</h3>
            <label for="inputNome" class="sr-only">Nome</label>
            <input type="text" id="inputNome" class="form-control" placeholder="Nome" required autofocus runat="server">
            <label for="inputRa" class="sr-only">RA</label>
            <input type="number" id="inputRa" class="form-control" placeholder="RA" required autofocus runat="server">
            <label for="inputNome" class="sr-only">Curso</label>
            <input type="text" id="inputCurso" class="form-control" placeholder="Curso" required autofocus runat="server">
            <label for="inputLogin" class="sr-only">Login</label>
            <input type="text" id="inputLogin" class="form-control" placeholder="Login" required autofocus runat="server">            
            <label for="inputPassword" class="sr-only">Senha</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Senha" required runat="server">
            <label for="confirmPassword" class="sr-only">Confirme Senha</label>
            <input type="password" id="confirmPassword" class="form-control" placeholder="Confrime Senha" required runat="server">
            <br />
            <asp:Button class="btn btn-lg btn-primary btn-block" type="submit" ID="btnSubmit" runat="server"
                Text="Cadastrar" OnClick="IncluirRegistros" />
        </div>
    </div>                
</asp:Content>
