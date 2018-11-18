<%@ Page Title="User Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="UnipTaskManager.UserPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center">Tarefas</h2>
    <asp:Button ID="btnAdd" CommandName="AddNew" runat="server" Text="Inserir nova tarefa" PostBackUrl="~/AddTarefa.aspx" />
    <br />
    <asp:Label ID="lblmsg1" CssClass="alert alert-success" style="float:right;margin-top:-5%;" runat="server"></asp:Label>
    <br />
    <asp:GridView ID="gvTask" CssClass="table table-sm table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="dsTaskpim" ForeColor="Black" GridLines="Horizontal" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="descricao" HeaderText="descricao" SortExpression="descricao" />
            <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
            <asp:BoundField DataField="datalimite" HeaderText="datalimite" SortExpression="datalimite" />
            <asp:BoundField DataField="RA" HeaderText="RA" SortExpression="RA" />
            <asp:CommandField CancelText="Cancelar" DeleteText="Apagar" EditText="Editar" HeaderText="Ações" InsertText="Inserir" NewText="Novo" SelectText="Selecionar" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Atualizar" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="dsTaskpim" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Tarefa] WHERE [ID] = ? AND (([descricao] = ?) OR ([descricao] IS NULL AND ? IS NULL)) AND (([tipo] = ?) OR ([tipo] IS NULL AND ? IS NULL)) AND (([datalimite] = ?) OR ([datalimite] IS NULL AND ? IS NULL)) AND (([RA] = ?) OR ([RA] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Tarefa] ([ID], [descricao], [tipo], [datalimite], [RA]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Tarefa]" UpdateCommand="UPDATE [Tarefa] SET [descricao] = ?, [tipo] = ?, [datalimite] = ?, [RA] = ? WHERE [ID] = ? AND (([descricao] = ?) OR ([descricao] IS NULL AND ? IS NULL)) AND (([tipo] = ?) OR ([tipo] IS NULL AND ? IS NULL)) AND (([datalimite] = ?) OR ([datalimite] IS NULL AND ? IS NULL)) AND (([RA] = ?) OR ([RA] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_descricao" Type="String" />
            <asp:Parameter Name="original_descricao" Type="String" />
            <asp:Parameter Name="original_tipo" Type="String" />
            <asp:Parameter Name="original_tipo" Type="String" />
            <asp:Parameter Name="original_datalimite" Type="DateTime" />
            <asp:Parameter Name="original_datalimite" Type="DateTime" />
            <asp:Parameter Name="original_RA" Type="Int32" />
            <asp:Parameter Name="original_RA" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="descricao" Type="String" />
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="datalimite" Type="DateTime" />
            <asp:Parameter Name="RA" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="descricao" Type="String" />
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="datalimite" Type="DateTime" />
            <asp:Parameter Name="RA" Type="Int32" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_descricao" Type="String" />
            <asp:Parameter Name="original_descricao" Type="String" />
            <asp:Parameter Name="original_tipo" Type="String" />
            <asp:Parameter Name="original_tipo" Type="String" />
            <asp:Parameter Name="original_datalimite" Type="DateTime" />
            <asp:Parameter Name="original_datalimite" Type="DateTime" />
            <asp:Parameter Name="original_RA" Type="Int32" />
            <asp:Parameter Name="original_RA" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
