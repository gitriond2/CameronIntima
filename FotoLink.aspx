<%@ Page Title="" Language="C#" MasterPageFile="~/MenuMaster.Master" AutoEventWireup="true" CodeBehind="FotoLink.aspx.cs" Inherits="CameronIntima.FotoLink" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      
        <div class="contenedor" runat="server">
            
            <asp:Image ID="ImagenProducto" CssClass="imagen" runat="server" />
               <asp:Button ID="BtnVolver" runat="server" Text="Volver" CssClass="boton" OnClick="BtnVolver_Click" /> 
            
        </div>


     <style>
     .contenedor {
         display: flex; /* Usamos Flexbox */
         justify-content: center; /* Centra horizontalmente */
         align-items: center; /* Centra verticalmente */
         height: 100vh; /* Hace que el contenedor ocupe toda la altura de la ventana */
         position: relative; /* Necesario para el posicionamiento absoluto del botón */
     }

     .imagen {
         width: 100%; /* Ajusta la imagen al ancho del contenedor */
         height: 100%; /* Ajusta la imagen a la altura del contenedor */
         object-fit: contain; /* Mantiene la proporción sin deformar */
         display: block; /* Hace que la imagen se comporte como un bloque */
     }

     .boton {
         position: absolute; /* Posiciona el botón sobre la imagen */
         top: 20px; /* Ajusta la posición vertical del botón */
         left: 20px; /* Ajusta la posición horizontal del botón */
         padding: 10px 20px; /* Ajusta el tamaño del botón */
         background-color: rgba(255, 255, 255, 0.8); /* Fondo semi-transparente */
         border: none; /* Sin borde */
         cursor: pointer; /* Cambia el cursor al pasar sobre el botón */
         font-size: 16px; /* Tamaño de fuente */
     }
 </style>    

</asp:Content>
