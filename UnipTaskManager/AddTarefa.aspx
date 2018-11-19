<%@ Page Title="Cadastrar Atividade" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddTarefa.aspx.cs" Inherits="UnipTaskManager.AddTarefa" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="py-5 text-center">

        <h2><%: Title %></h2>
        <p class="lead">
            Preencha os dados abaixo para cadastrar sua atividade.
        </p>
        <br />
        <asp:Label ID="lblMsg" runat="server" CssClass="alert alert-success" style="float:right;margin-top:-5%;" Text=""></asp:Label>
        <br />
    </div>

    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="sltTipo">Tipo</label>
                    <asp:DropDownList
                        class="custom-select d-block w-100"
                        ID="sltTipo"
                        runat="server">
                        <asp:ListItem Value=""> Selecione Atividade </asp:ListItem>
                        <asp:ListItem Value="Trabalho"> Trabalho </asp:ListItem>
                        <asp:ListItem Value="Prova"> Prova </asp:ListItem>
                        <asp:ListItem Value="AC"> AC </asp:ListItem>
                        <asp:ListItem Value="DP"> DP </asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="req1"
                        runat="server" Text="Selecione Atividade" ControlToValidate="sltTipo"
                        Display="dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6 b-3">
                    <label for="txtDataLimite">Data Limite</label>
                    <asp:TextBox ID="txtDataLimite" runat="server" TextMode="Date" min="1890-01-01" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req2"
                        runat="server" Text="Selecione data limite" ControlToValidate="txtDataLimite"
                        Display="dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 mb-3">
                    <asp:Label ID="Label1" runat="server" Text="RA"></asp:Label> <br />
                    <asp:DropDownList ID="dplRA" runat="server" DataSourceID="dsTaskPim" DataTextField="RA" DataValueField="RA">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="dsTaskPim" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [RA] FROM [Aluno]"></asp:SqlDataSource>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 mb-3">
                    <label for="descr">Descrição</label><br />
                    <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine" Height="76px" Width="594px"></asp:TextBox>
                </div>
            </div>
            <hr class="mb-4" />
            <asp:Button ID="addTask" CssClass="btn btn-primary btn-lg btn-block" runat="server" Text="Cadastrar Atividade" OnClick="addTask_Click" />
        </div>
    </div>
    <script>
        let today = new Date();
        let tomorrow = today;
        tomorrow.setDate(today.getDate() + 1);

        let dd = tomorrow.getDate();
        let mm = tomorrow.getMonth() + 1;
        let yyyy = tomorrow.getFullYear();
        if (dd < 10) {
            dd = '0' + dd
        }
        if (mm < 10) {
            mm = '0' + mm
        }

        const date = yyyy + '-' + mm + '-' + dd;
        document.getElementById("MainContent_txtDataLimite").setAttribute("min", date);
    </script>
</asp:Content>
