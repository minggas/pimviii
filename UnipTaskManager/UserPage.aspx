<%@ Page Title="User Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="UnipTaskManager.UserPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center">Tarefas</h2>
    <asp:Button ID="btnAdd" CommandName="AddNew" runat="server" Text="Inserir nova tarefa" PostBackUrl="~/AddTarefa.aspx" />
    <br />
    <br />
    <asp:GridView ID="gvTask" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="table table-striped" DataKeyNames="ID" DataSourceID="dsTaskpim">
        <Columns>
            
            <asp:BoundField DataField="descricao" HeaderText="Descrição" SortExpression="descricao" />
            <asp:BoundField DataField="tipo" HeaderText="Tipo" SortExpression="tipo" />
            <asp:BoundField DataField="datalimite" HeaderText="Data Limite - Ano-Mês-Dia" ApplyFormatInEditMode="true" SortExpression="datalimite" DataFormatString="{0:d}" HtmlEncode="false" />

            <asp:CommandField CancelImageUrl="~/Assets/imgs/cancel.png" CancelText="Cancelar" DeleteImageUrl="~/Assets/imgs/delete.png" EditImageUrl="~/Assets/imgs/edit.png" EditText="Editar" ShowEditButton="True" UpdateImageUrl="~/Assets/imgs/update.png" InsertText="Inserir" NewText="Novo" SelectText="Selecionar" UpdateText="Atualizar" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="btn_delete" runat="server" OnClientClick="return confirm('Tem certeza que deseja deletar essa informação ?');" CausesValidation="False" CommandName="Delete" Text="Deletar"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle CssClass="thead-dark" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="dsTaskpim" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Tarefa] WHERE [ID] = ?" InsertCommand="INSERT INTO [Tarefa] ([ID], [descricao], [tipo], [datalimite], [RA]) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Tarefa] WHERE ([Ra] = ?)" UpdateCommand="UPDATE [Tarefa] SET [descricao] = ?, [tipo] = ?, [datalimite] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="descricao" Type="String" />
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="datalimite" Type="String" />

        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="UserRa" Name="?"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="descricao" Type="String" />
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="datalimite" Type="String" />


        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    
</asp:Content>
