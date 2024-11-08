<%@ Page Title="" Language="C#" MasterPageFile="~/MenuMaster.Master" AutoEventWireup="true" CodeBehind="Compras.aspx.cs" Inherits="CameronIntima.Compras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
    <div runat="server">
        <asp:GridView ID="GridView2" runat="server" CssClass="table table-sm table-hover"
            Style="width: 100%" AutoGenerateColumns="False" DataKeyNames="ID" allowpaging="true"
            DataSourceID="TableTienda" OnRowCommand="GridView2_RowCommand" >
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" DataFormatString="{0:C}" />
                <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
<%--                <asp:ButtonField ButtonType="Link" CommandName="Add" Text="Add" />--%>
                <asp:TemplateField HeaderText="Accion">
                    <ItemTemplate>
                        
                        <%--<asp:ImageButton runat="server" ID="btnEditar" CssClass="btn btn-warning" CommandName="Editar" CommandArgument='<%# Container.DataItemIndex.ToString() %>'  />--%>  <%--ImageUrl="~/Estilos/images/editar.png"--%>
                        <asp:Button ID="btnModificar" runat="server" CssClass="btn btn-warning" CommandName="Editar" Text="Editar" CommandArgument='<%# Container.DataItemIndex.ToString() %>' />
                        <asp:Button ID="btnEliminar" runat="server" CssClass="btn btn-danger" CommandName="Eliminar" Text="Eliminar" CommandArgument='<%# Container.DataItemIndex.ToString() %>' />
                    

                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="TableTienda" runat="server" ConnectionString="<%$ ConnectionStrings:cameronIntimaConnectionString %>" ProviderName="<%$ ConnectionStrings:cameronIntimaConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [productos]"></asp:SqlDataSource>

     </div> 
   

    </div>
</asp:Content>
