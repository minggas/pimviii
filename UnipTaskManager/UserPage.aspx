<%@ Page Title="User Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="UnipTaskManager.UserPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <asp:Button ID="btnAdd" CommandName="AddNew" runat="server" Text="Inserir nova tarefa" PostBackUrl="~/AddTarefa.aspx" />
    
    <br />
    <asp:GridView runat="server" ID="gvTarefas" AutoGenerateColumns="false" DataKeyNames="ID,tipo,datalimite,descricao" OnRowUpdating="gvTarefas_RowUpdating" OnRowDeleting="gvTarefas_RowDeleting" Width="724px">
        <HeaderStyle CssClass="headerstyle" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="Id" ReadOnly="true" />
            <asp:BoundField DataField="tipo" HeaderText="Atividade" ReadOnly="true" />
            <asp:BoundField DataField="datalimite" HeaderText="Data Limite" ReadOnly="true" />
            <asp:BoundField DataField="descricao" HeaderText="Id" ReadOnly="true" />
            <asp:TemplateField HeaderText="Update">
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" />
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnEdit" Text="Edit" CommandName="Edit" ToolTip="Click here to Edit the record" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" />
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandName="Delete" OnClientClick="return confirm('Are You Sure You want to Delete the Record?');" ToolTip="Click here to Delete the record" />
                    </span>  
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    

</asp:Content>
