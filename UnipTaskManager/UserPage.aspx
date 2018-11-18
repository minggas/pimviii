<%@ Page Title="User Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="UnipTaskManager.UserPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <asp:Button ID="btnAdd" CommandName="AddNew" runat="server" Text="Inserir nova tarefa" OnClick="btnAdd_Click" PostBackUrl="~/AddTarefa.aspx" />
    <br />
    <asp:GridView runat="server" ID="gvTarefas" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" OnPageIndexChanging="gvTarefas_PageIndexChanging" OnRowCancelingEdit="gvTarefas_RowCancelingEdit"
        OnRowEditing="gvTarefas_RowEditing" OnRowUpdating="gvTarefas_RowUpdating" OnRowDeleting="gvTarefas_RowDeleting" OnRowCommand="gvTarefas_RowCommand" Width="724px" DataSourceID="dsTaskPimv">
        <HeaderStyle CssClass="headerstyle" />
        <Columns>
            <asp:BoundField DataField="titulo" HeaderText="titulo" SortExpression="titulo" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="dataLimite" HeaderText="dataLimite" SortExpression="dataLimite" />
            <asp:BoundField DataField="categoria" HeaderText="categoria" SortExpression="categoria" />
            <asp:BoundField DataField="disciplina" HeaderText="disciplina" SortExpression="disciplina" />
            <asp:CheckBoxField DataField="terminado" HeaderText="terminado" SortExpression="terminado" />
            <asp:BoundField DataField="descricao" HeaderText="descricao" SortExpression="descricao" />
            <asp:BoundField DataField="RA" HeaderText="RA" SortExpression="RA" />
        </Columns>
    </asp:GridView>

<asp:SqlDataSource ID="dsTaskPimv" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [titulo], [ID], [dataLimite], [categoria], [disciplina], [terminado], [descricao], [RA] FROM [Tarefa]"></asp:SqlDataSource>

</asp:Content>
