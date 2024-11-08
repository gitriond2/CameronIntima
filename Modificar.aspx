<%@ Page Title="" Language="C#" MasterPageFile="~/MenuMaster.Master" AutoEventWireup="true" CodeBehind="Modificar.aspx.cs" Inherits="CameronIntima.Modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">


        <table>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="ID:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblID" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                </td>

                <td>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Categoria:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCategoria" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Descripcion:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Talle:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTalle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="label7" runat="server" Text="Color:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtColor" runat="server" Text=""></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="label5" runat="server" Text="Precio:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPrecio" runat="server" Text="" DataFormatString="{0:C}"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTexto" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
                </td>
            </tr>


        </table>

    </form>
</asp:Content>
