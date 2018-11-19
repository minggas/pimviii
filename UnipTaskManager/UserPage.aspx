<%@ Page Title="User Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="UnipTaskManager.UserPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center">Tarefas</h2>
    <asp:Button ID="btnAdd" CommandName="AddNew" runat="server" Text="Inserir nova tarefa" PostBackUrl="~/AddTarefa.aspx" />
    <br />
    <br />
    <asp:Label ID="lblmsg1" CssClass="alert alert-success" style="float:right;margin-top:-5%;" runat="server"></asp:Label>
    <asp:GridView ID="gvTask" runat="server" CssClass="table table-sm table-hover" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="dsTaskPim">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="descricao" HeaderText="Descrição" SortExpression="descricao" />
            <asp:BoundField DataField="tipo" HeaderText="Tipo" SortExpression="tipo" />
            <asp:BoundField DataField="datalimite" HeaderText="Data Limite" SortExpression="datalimite" />
            <asp:BoundField DataField="RA" HeaderText="RA" SortExpression="RA" />
            <asp:CommandField CancelText="Cancelar" DeleteText="Deletar" EditText="Editar" HeaderText="Ações" InsertText="Inserir" NewText="Novo" SelectText="Selecionar" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Atualizar" />
        </Columns>
        <HeaderStyle CssClass="thead-dark" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="dsTaskPim" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        DeleteCommand="DELETE FROM [Tarefa] WHERE [ID] = ?"
        InsertCommand="INSERT INTO [Tarefa] ([ID], [descricao], [tipo], [datalimite], [RA]) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
        SelectCommand="SELECT * FROM [Tarefa]"
        UpdateCommand="UPDATE [Tarefa] SET [descricao] = ?, [tipo] = ?, [datalimite] = ?, [RA] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="descricao" Type="String" />
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="datalimite" Type="String" />
            <asp:Parameter Name="RA" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="descricao" Type="String" />
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="datalimite" Type="String" />
            <asp:Parameter Name="RA" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    
</asp:Content>
