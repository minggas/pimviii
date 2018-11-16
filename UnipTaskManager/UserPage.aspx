<%@ Page Title="User Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="UnipTaskManager.UserPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <asp:Button ID="btnAdd" CommandName="AddNew" runat="server" Text="Inserir nova tarefa" />
    <br />
    <asp:GridView runat="server" ID="gvTarefas" AllowPaging="true" PageSize="10" AutoGenerateColumns="false" DataKeyNames="id_tarefa,tipo,datalimite,descricao" OnPageIndexChanging="gvTarefas_PageIndexChanging" OnRowCancelingEdit="gvTarefas_RowCancelingEdit"
        OnRowEditing="gvTarefas_RowEditing" OnRowUpdating="gvTarefas_RowUpdating" OnRowDeleting="gvTarefas_RowDeleting" OnRowCommand="gvTarefas_RowCommand" Width="724px">
        <HeaderStyle CssClass="headerstyle" />
        <Columns>
            <asp:BoundField DataField="id_tarefa" HeaderText="Product Id" ReadOnly="true" />
            <asp:TemplateField HeaderText="Atividade">
                <ItemTemplate>
                    <asp:Label ID="lblTarefatipo" runat="server" Text='<%# Eval("tipo")%>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtTarefatipo" runat="server" Text='<%# Eval("tipo")%>' />
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Data Limite">
                <ItemTemplate>
                    <asp:Label ID="lblDataLimite" runat="server" Text='<%# Bind("DateofBirth") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtDataLimite" runat="server" Text='<%# Bind("DateofBirth") %>' TextMode="Date"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
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
