<%@ Page Title="Cadastrar Novo Aluno" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="UnipTaskManager.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center">
        <h2><%: Title %></h2>
        <div class="form-signin">
            <h3 class="h3 mb-3 font-weight-normal">Preencha os dados para efetuar seu cadastro</h3>
            <br />
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
            <br />
            <asp:TextBox type="text" ID="txtNome" runat="server" class="form-control" placeholder="Nome"></asp:TextBox>
            <asp:RequiredFieldValidator ID="req1" runat="server" Text="Preencha seu Nome" ControlToValidate="txtNome" Display="dynamic"></asp:RequiredFieldValidator>



            <asp:TextBox type="number" ID="txtRa" runat="server" class="form-control" placeholder="RA"></asp:TextBox>
            <asp:RequiredFieldValidator ID="req2"
                runat="server" Text="Preenchar o seu RA" ControlToValidate="txtRa"
                Display="dynamic"></asp:RequiredFieldValidator>



            <asp:TextBox type="text" ID="txtCurso" runat="server" class="form-control" placeholder="Curso"></asp:TextBox>
            <asp:RequiredFieldValidator ID="req3"
                runat="server" Text="Preencha seu Curso" ControlToValidate="txtCurso"
                Display="dynamic"></asp:RequiredFieldValidator>


            <asp:TextBox type="password" ID="txtSenha" runat="server" class="form-control" placeholder="Senha"></asp:TextBox>
            <asp:RequiredFieldValidator ID="req4"
                runat="server" Text="Preencha sua senha" ControlToValidate="txtSenha"
                Display="dynamic"></asp:RequiredFieldValidator>


            <asp:TextBox type="password" ID="txtConfirmarSenha" runat="server" class="form-control" placeholder="Confirme Senha"></asp:TextBox>
            <asp:RequiredFieldValidator ID="req5"
                runat="server" Text="Confirme sua senha" ControlToValidate="txtConfirmarSenha"
                Display="dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator runat="server" ID="cmpSenhas" ControlToValidate="txtSenha" ControlToCompare="txtConfirmarSenha" Type="String" ErrorMessage="As senhas estão diferentes" />
            <br />
            <asp:Button class="btn btn-lg btn-primary btn-block" ID="btnSubmit" runat="server" Text="Cadastrar" OnClick="Btn_Cadastro" />
        </div>
    </div>


</asp:Content>
