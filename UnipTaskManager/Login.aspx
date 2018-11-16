<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UnipTaskManager.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center">
        <h2><%: Title %></h2>
        <div class="form-signin">
           
            <asp:TextBox type="number" ID="txtRa" runat="server" class="form-control" placeholder="Digite seu RA"></asp:TextBox>
            <asp:RequiredFieldValidator ID="req1"
                        runat="server" Text="Preencha o seu RA" ControlToValidate="txtRa"
                        Display="dynamic"></asp:RequiredFieldValidator>
            <asp:TextBox type="password" ID="txtSenha" runat="server" class="form-control" placeholder="Digite sua senha"></asp:TextBox>
            <asp:RequiredFieldValidator ID="req4"
                        runat="server" Text="Preencha sua senha" ControlToValidate="txtSenha"
                        Display="dynamic"></asp:RequiredFieldValidator>
            <br />
            <asp:Button class="btn btn-lg btn-primary btn-block" type="submit" ID="btnLogin" runat="server"
                Text="Login" OnClick="Btn_Logar" />
        </div>
        <span>Não possui cadastro?<a href="Register.aspx"> Registre-se</a></span>
    </div>
</asp:Content>
