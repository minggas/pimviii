<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UnipTaskManager.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center">
        <h2><%: Title %></h2>
        <div class="form-signin">
            <h3 class="h3 mb-3 font-weight-normal">Efetuar login</h3>
            <label for="inputLogin" class="sr-only">Login</label>
            <input type="text" id="inputLogin" class="form-control" placeholder="Login" required autofocus runat="server">
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required runat="server">
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me">
                    Remember me
                </label>
            </div>
            <br />
            <asp:Button class="btn btn-lg btn-primary btn-block" type="submit" ID="btnLogin" runat="server"
                Text="Login" OnClick="Logar" />
        </div>
    </div>
</asp:Content>
