<%@ Page Title="" Language="C#" MasterPageFile="~/MenuMaster.Master" AutoEventWireup="true" CodeBehind="cargaprod.aspx.cs" Inherits="CameronIntima.cargaprod" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <%--esto es para obtener la imagen url--%>
    <script>
        //var appURL = "@Url.content("~/")";
    </script>


    <link href="CSS/posicionYdesplazamiento.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server">
        <fieldset runat="server">
   
            <legend style="font-family: 'Arial', sans-serif; font-size: 24px; font-weight: bold; color: #333; text-align: left; text-transform: uppercase; margin-bottom: 20px;">Agregar Producto</legend>
            <table runat="server">
                <tr>
                    <td>
                        <label runat="server" class="super-rounded-label">Nombre:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="super-rounded-input" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label runat="server" class="super-rounded-label">Categoria:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCategoria" runat="server" CssClass="super-rounded-input"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label runat="server" class="super-rounded-label">Descripcion:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="descripcion" runat="server" CssClass="super-rounded-input" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label runat="server" class="super-rounded-label">Talle:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTalle" runat="server" CssClass="super-rounded-input" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" class="super-rounded-label" > Color:</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtColor" runat="server" CssClass="super-rounded-input" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" class="super-rounded-label">Precio:</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label runat="server" class="super-rounded-label" >Cargar Imagen</label>
                    </td>
                    <td>
                        <asp:FileUpload ID="txtImagen" runat="server" />

                        <%--   <br />--%>
                    </td>

                    <td>
                        <label>&nbsp;</label>
                    </td>

                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblTexto" Font-Bold="true" ForeColor="Red" Text="" runat="server" />
                    </td>
                </tr>

            </table>
            <%--<button type="submit">Guardar Imagen</button>--%>
            <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
            <asp:Label Visible="false" ID="lblMensaje" ForeColor="Red" runat="server"></asp:Label>

            <table>
                <tr>
                    <td>
                        <asp:Label ID="Busqueda" runat="server" Text="Por favor, ingresa el ID del registro a Modificar o Eliminar"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
           
                        

       
            <asp:Button ID="BtnModificar" runat="server" Text="Modificar" OnClick="BtnModificar_Click" />
            <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar" OnClick="BtnEliminar_Click" />
            <%--<asp:Button ID="BtnBusqModificar" runat="server" Text="BusquedaModifica" OnClick="BtnBusqModificar_Click" />--%>
            <br /><br /><br />


            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView2_RowCommand" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSourceCameronIntima">
                <Columns>
                    <%--<asp:BoundField DataField="idProducto" HeaderText="idProducto" InsertVisible="False" ReadOnly="True" SortExpression="idProducto" />--%>
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="categoria" HeaderText="categoria" SortExpression="categoria" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                    <asp:BoundField DataField="talle" HeaderText="talle" SortExpression="talle" />
                    <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
                    <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio"  DataFormatString="{0:C}" />
                    <%--<asp:BoundField DataField="dirImagen" HeaderText="dirImagen" InsertVisible="False" SortExpression="dirImagen" />--%>
                    <asp:TemplateField HeaderText="Accion">
                        <ItemTemplate>

                            <%--<asp:ImageButton runat="server" ID="btnEditar" CssClass="btn btn-warning" CommandName="Editar" CommandArgument='<%# Container.DataItemIndex.ToString() %>'  />--%>  <%--ImageUrl="~/Estilos/images/editar.png"--%>
                            <asp:Button ID="btnModificar" runat="server" CssClass="btn btn-warning" CommandName="Editar"  Text="Editar" CommandArgument='<%# Container.DataItemIndex.ToString() %>' />
                            <asp:Button ID="btnEliminar" runat="server" CssClass="btn btn-danger" CommandName="Eliminar" OnClientClick="return confirm('¿Desea realmente eliminar el registro?');" Text="Eliminar" CommandArgument='<%# Container.DataItemIndex.ToString() %>' />


                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
               

            </asp:GridView>


            <asp:SqlDataSource ID="SqlDataSourceCameronIntima" runat="server" ConnectionString="<%$ ConnectionStrings:cameronIntimaConnectionString3 %>" SelectCommand="SELECT * FROM [producto]"></asp:SqlDataSource>


        </fieldset>
        
                    <br /><br /><br />





    </div>
    <script src="javascript/js/global.js"></script>
</asp:Content>
