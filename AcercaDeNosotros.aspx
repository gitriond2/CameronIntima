<%@ Page Title="" Language="C#" MasterPageFile="~/MenuMaster.Master" AutoEventWireup="true" CodeBehind="AcercaDeNosotros.aspx.cs" Inherits="CameronIntima.AcercaDeNosotros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Línea superior negra -->
    <div style="background-color: black; height: 1px; width: 100%;"></div>

    <!-- Modal de búsqueda -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Buscar ...">
                    <button type="submit" class="input-group-text bg-success text-light"><i class="fa fa-fw fa-search text-white"></i></button>
                </div>
            </div>
        </div>
    </div>

   <!-- Sección Acerca de Nosotros -->
<section class="py-5" style="background-color: #d6938a;">
    <div class="container">
        <div class="row align-items-center py-5">
            <div class="col-md-8 text-white">
                <h1 class ="tex1" >Sobre Nosotros</h1>
                <p>Fundada en 2005, la empresa nació con la misión de romper barreras en la industria de la ropa interior, ofreciendo una experiencia de compra en línea cómoda, discreta y personalizada. Con el tiempo, la marca ha evolucionado para incluir una amplia gama de estilos, desde lo básico y funcional hasta lo elegante y lujoso. A través de alianzas con diseñadores innovadores y el uso de materiales sostenibles, ha logrado consolidarse como una tienda confiable que prioriza el confort, la moda y la accesibilidad para todos sus clientes.</p>
            </div>
        </div>
    </div>
</section>

    <!-- Sección Otros Servicios -->
    <section class="container py-5">
        <div class="row text-center pt-5 pb-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">Otros Servicios</h1>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-4 pb-5 d-flex justify-content-center">
                <div class="h-100 py-5 services-icon-wap shadow text-center d-flex flex-column align-items-center justify-content-center" style="height: 250px; width: 250px;background-color: #ffcccb;">
                    <div class="h1" style="color: black;"><i class="fa fa-truck fa-lg"></i></div>
                    <h2 class="h5 mt-4">Servicio De Delivery</h2>
                </div>
            </div>
            <div class="col-md-8 col-lg-4 pb-5 d-flex justify-content-center">
                <div class="h-100 py-5 services-icon-wap shadow text-center d-flex flex-column align-items-center justify-content-center" style="height: 250px; width: 250px;background-color: #ffcccb;">
                    <div class="h1" style="color: black;"><i class="fa fa-percent"></i></div>
                    <h2 class="h5 mt-4">Promoción</h2>
                </div>
            </div>
        </div>
    </section>

    <!-- Sección Contacto -->
    <div class="container-fluid py-5" style="background-color :#d6938a;">
    <div class="col-md-6 m-auto text-center">
        <h1 class="h1">Contáctanos</h1>
    </div>
</div>

   <!-- Formulario de Contacto -->
<div class="container py-5">
    <div class="row py-5">
        <div class="col-md-9 m-auto" method="post" role="form">
            <div class="row">
                <div class="form-group col-md-6 mb-3">
                        <asp:Label  runat="server" Text="Nombre" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control mt-1 rounded-border" Placeholder="" />
                </div>
                <div class="form-group col-md-6 mb-3">
                        <asp:Label  runat="server" Text="Email"  CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mt-1 rounded-border" Placeholder="" TextMode="Email" />
                </div>
            </div>
            <div class="mb-3">
                    <asp:Label  runat="server" Text="Asunto"  CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtAsunto" runat="server" CssClass="form-control mt-1 rounded-border" Placeholder="" />
            </div>
            <div class="mb-3">
                    <asp:Label  runat="server" Text="Mensaje"  CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtMensaje" runat="server" CssClass="form-control mt-1 rounded-border" Rows="8" TextMode="MultiLine" Placeholder="" />
            </div>
            <div class="row">
                <div class="col text-end mt-2">
                    <%--<asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-lg px-3" OnClick="Contacto_Click" OnClientClick="mensaje('¡Gracias por contactarse con nosotros!');" Text="Hablemos" Style="background-color: #d6938a;" />--%>
                    <asp:Button ID="Contacto" CssClass="btn btn-lg px-3"  runat="server" Text="Hablemos" OnClick="Contacto_Click" OnClientClick="return confirm('Gracias Por su Mensaje!');" Style="background-color: #d6938a;" />
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    /* Estilos para los campos de texto */
    .rounded-border {
        border: 2px solid black; /* Borde más oscuro */
        border-radius: 10px; /* Bordes redondeados */
    }
</style>
</asp:Content>
