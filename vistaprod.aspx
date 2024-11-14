<%@ Page Title="" Language="C#" MasterPageFile="~/MenuMaster.Master" AutoEventWireup="true" CodeBehind="vistaprod.aspx.cs" Inherits="CameronIntima.vistaprod" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        /* Estilo para el GridView */
        .styled-gridview {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .styled-gridview th {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .styled-gridview td {
            padding: 8px;
            border: 1px solid #ddd;
        }

        .styled-gridview tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .styled-gridview tr:hover {
            background-color: #ddd;
        }
        .super-rounded-input {
            border-radius: 20px;
            border: 1px solid #000000;
            padding: 10px;
            width: 100%;
            box-sizing: border-box;
            outline: none;
            font-size: 14px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div runat="server">
      <!-- GridView con estilo aplicado --> 
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceProducto" CssClass="styled-gridview">
          <Columns>
              <asp:BoundField DataField="idProducto" HeaderText="idProducto" InsertVisible="False" ReadOnly="True" SortExpression="idProducto" />
              <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" Visible="False" />
              <asp:BoundField DataField="categoria" HeaderText="categoria" SortExpression="categoria" />
              <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
              <asp:BoundField DataField="talle" HeaderText="talle" SortExpression="talle" />
              <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
              <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" DataFormatString="{0:C}" />
              <%--<asp:BoundField DataField="dirImagen" HeaderText="dirImagen" SortExpression="dirImagen" />--%>
              <asp:TemplateField HeaderText="Imagen">
                  <ItemTemplate>
                      <asp:HyperLink ID="hlImagen" runat="server" Text="Ver Imagen" NavigateUrl='<%# Eval("dirImagen", "FotoLink.aspx?dirImagen={0}") %>' />
                  </ItemTemplate>
              </asp:TemplateField>
          </Columns>
      </asp:GridView>

      <asp:SqlDataSource ID="SqlDataSourceProducto" runat="server" ConnectionString="<%$ ConnectionStrings:cameronIntimaConnectionProducto %>" SelectCommand="SELECT * FROM [producto]"></asp:SqlDataSource>

      <br />

      <table>
          <tr>
              <td>
                  <asp:Label runat="server" Text="Ingresar ID del producto para modificar o eliminar:  "></asp:Label></td>
              <td>
                  <asp:TextBox ID="txtID" runat="server" CssClass="super-rounded-input"></asp:TextBox></td>
              <td>
                  <asp:Button ID="BtnModificar" runat="server" Text="Modificar" OnClick="BtnModificar_Click" CssClass="super-rounded-input" /></td>
              <td>
                  <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar" OnClick="BtnEliminar_Click" CssClass="super-rounded-input"  OnClientClick="return confirm('¿Desea realmente eliminar el registro?');" />
              </td>
              <td>
                  <asp:Button ID="BtnGuardar" runat="server" Text="Agregar" OnClick="BtnGuardar_Click" CssClass="super-rounded-input" /></td>
          </tr>
      </table>
</div>
</asp:Content>
