<%@ Page Title="" Language="C#" MasterPageFile="~/MenuMaster.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="CameronIntima.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="Labelconteiner">
        <asp:Label ID="Label2" runat="server" Text="Label">Contenedor</asp:Label>
        <asp:Label ID="TextAdvertencia"  runat="server" Text="label" ForeColor="#f8f9fa">Informacion</asp:Label>
    </div>

    <form  action="./inicio.aspx" id="formulario1">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="R6xySDs0yR5E5fgzUBaU9mcsCnHpyF4ZYWFYf8zNNjMthg5KMBP5MXPjv3TNozUSIYIVSl50zH3ZCN4LB+BsQuUGaS+vFNZ9SAJ+R+Xy8Fo=">
</div>

<div class="aspNetHidden">
	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="980642AA">
</div>

     <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./assets/img/banner_img_01.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h1 class="h1 text-success"><b>nombre producto</b> </h1>
                                <h3 class="h2">categoria de producto</h3>
                                <p>
                                    aca va a estar la descripcion del producto
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./assets/img/banner_img_02.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1 text-success"><b>nombre producto</b> </h1>
                                <h3 class="h2">categoria de producto</h3>
                                <p>
                                    aca va a estar la descripcion del producto
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./assets/img/banner_img_03.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1 text-success"><b>nombre producto</b> </h1>
                                <h3 class="h2">categoria de producto</h3>
                                <p>
                                    aca va a estar la descripcion del producto
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->

  <div > 
    
                              <%--antepiepagina--%>
     <aside>
        <div class="informacionYcontacto">
       
               <asp:Label ID="Label5" runat="server" Text="InformacionYcontenido"></asp:Label>
            
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
                                <img src="./assets/img/category_img_01.jpg" class="rounded-circle img-fluid border"></a>
                            <h5 class="text-center mt-3 mb-3">Watches</h5>
                            <p class="text-center"><a class="btn btn-success">Go Shop</a></p>
                        </div>
                        <div class="col-12 col-md-4 p-5 mt-3">
                            <a href="#">
                                <img src="./assets/img/category_img_02.jpg" class="rounded-circle img-fluid border"></a>
                            <h2 class="h5 text-center mt-3 mb-3">Shoes</h2>
                            <p class="text-center"><a class="btn btn-success">Go Shop</a></p>
                        </div>
                        <div class="col-12 col-md-4 p-5 mt-3">
                            <a href="#">
                                <img src="./assets/img/category_img_03.jpg" class="rounded-circle img-fluid border"></a>
                            <h2 class="h5 text-center mt-3 mb-3">Accessories</h2>
                            <p class="text-center"><a class="btn btn-success">Go Shop</a></p>
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

</form>
</asp:Content>
