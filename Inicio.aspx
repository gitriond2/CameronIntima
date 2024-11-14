 <%@ Page Title="" Language="C#" MasterPageFile="~/MenuMaster.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="CameronIntima.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      <script lan="javascript">

         function promo(txt) {

             alert(txt);
         }
      </script>
    <!-- Línea superior negra -->
    <div class= "linSup" ></div>
    
    
    <div  action="./inicio.aspx" id="formulario1">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="R6xySDs0yR5E5fgzUBaU9mcsCnHpyF4ZYWFYf8zNNjMthg5KMBP5MXPjv3TNozUSIYIVSl50zH3ZCN4LB+BsQuUGaS+vFNZ9SAJ+R+Xy8Fo=">
</div>

<div class="aspNetHidden">
	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="980642AA">
</div>

     <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
    <ol class="carousel-indicators">
        <li class="active" data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0"  ></li>
        <li class="active" data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1" ></li>
        <li  class="active"data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2" ></li>
    </ol>
    <div class="carousel-inner">
        <!-- Primer elemento del carrusel -->
        <div class="carousel-item active">
            <img class="d-block w-100" src=".\CSS_viejo\img\traje_baño_1.jpg" alt="Imagen del producto 1">
            <div class="carousel-caption d-none d-md-block text-start">
                
            </div>
        </div>

        <!-- Segundo elemento del carrusel -->
        <div class="carousel-item">
            <img class="d-block w-100" src=".\CSS_viejo\img\traje_baño.jpg" alt="Imagen del producto 2">
            <div class="carousel-caption d-none d-md-block text-start">
                
            </div>
        </div>

        <!-- Tercer elemento del carrusel -->
        <div class="carousel-item">
            <img class="d-block w-100" src=".\CSS_viejo\img\traje_baño_2.jpg" alt="Imagen del producto 3">
            <div class="carousel-caption d-none d-md-block text-start">
              
            </div>
        </div>
    </div>

    <!-- Controles del carrusel -->
    <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
        <i class="fas fa-chevron-left" style="color: black!important;" ></i>
    </a>
    <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
        <i class="fas fa-chevron-right" style="color: black!important;" "></i>
    </a>
</div>

    <!-- End Banner Hero -->

  <div > 
    
    <%--antepiepagina--%>
     <aside>
        <div class="informacionYcontacto">
       
               <%--<asp:Label ID="Label5" runat="server" Text="3  cuotas sin interés con  tarjetas bancarias." ></asp:Label>--%>
            
                <!-- Start Categories of The Month -->
                <section class="container py-5">
                    <div class="row text-center pt-3">
                        <div class="col-lg-6 m-auto">
                            <h1 class="h1"> CATEGORIA DEL MES </h1>
                            <p>
                                DESCRIPCION
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-md-4 p-5 mt-3">
                            <a href="#">
                                <img src=".\CSS_viejo\img\descuento.jpg" class="rounded-circle img-fluid border"></a>
                            <%--<h5 class="text-center mt-3 mb-3">Descuentos</h5>--%>
                            <p class="text-center"><a href="javascript:promo('30% de descuento en toda tu compra');" class="btn" >Descuentos</a></p>

                        </div>
                        <div class="col-12 col-md-4 p-5 mt-3">
                            <a href="javascript:promo();">
                                <img src=".\CSS_viejo\img\promocion.jpg" class="rounded-circle img-fluid border"></a>
                            <%--<h2 class="h5 text-center mt-3 mb-3">Promociones</h2>--%>
                            <p class="text-center"><a href="javascript:promo('2x1 comprando en la sucursal');" class="btn" >Promociones</a></p>
                        </div>
                        <div class="col-12 col-md-4 p-5 mt-3">
                            <a href="#">
                                <img src=".\CSS_viejo\img\novedad.jpg" class="rounded-circle img-fluid border"></a>
                            <%--<h2 class="h5 text-center mt-3 mb-3">Novedades</h2>--%>
                            <p class="text-center"><a href="javascript:promo('En diciembre tendremos buenas noticias para vos');" class="btn" >Novedades</a></p>
                        </div>
                    </div>
                </section>
                <!-- End Categories of The Month -->

            
        </div>

    </aside>
                    <%--antepiepagina--%>

      
  </div>
    
        
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetDataItem" TypeName="CameronIntima.Inicio">
    </asp:ObjectDataSource>
    <table>
        </table>

</div>
</asp:Content>
