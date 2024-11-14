<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogUserlogin.aspx.cs" Inherits="CameronIntima.LogUserlogin" %>

<!DOCTYPE html>
<html lang="en">
  <head>
  	<title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <link href="CSS/pruebasdecss.css" rel="stylesheet" />
      <link href="CSS/posicionYdesplazamiento.css" rel="stylesheet" />
	<%--<link rel="stylesheet" href="css/Login.css">--%>
	<link href="loginmascara/css/Login.css" rel="stylesheet" />

	</head>
	<body>
		<form runat="server">

		
	<section class="ftco-section" runat="server">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Ingreso al Sistema</h2>
				</div>
			</div>
			<div class="row justify-content-center" runat="server">
				<div class="col-md-7 col-lg-5">
					<div class="wrap">
						<div><img class= "ImgLogIn" src=".\CSS_viejo\img\avatar.jpg" alt="Imagen del producto 1" /></div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h3 class="mb-4" >Iniciar Sesión</h3>

			      		</div>
								
			      	</div>
							<div class="signin-form" runat="server">
			      		<div class="form-group mt-3" runat="server">
			      			<%--<input type="text" class="form-control" required>--%>
							  <asp:TextBox ID="textUser" CssClass="form-control" runat="server"></asp:TextBox>
							  <asp:Label ID="userNames" CssClass="form-control-placeholder" For="User Name" runat="server" Text="Nombre De Usuario" ></asp:Label>
			      			<%--<label class="form-control-placeholder" for="username">Username</label>--%>
			      		</div>
		            <div class="form-group" runat="server">
		              <%--<input id="password-field" type="password" class="form-control" required>--%>
						<asp:TextBox ID="passWords" type="password" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
		              <label class="form-control-placeholder" for="password">Contraseña</label>
		              <span toggle="#passWords" class="fa fa-fw fa-eye field-icon toggle-password"></span>
		            </div>
		            <div class="form-group" runat="server">
						<asp:Button ID="btnLogin" class="form-control btn btn-primary rounded submit px-3" Text="Entrar" runat="server" OnClick="btnLogin_Click"/>
						
		            	<%--<button type="submit" class="form-control btn btn-primary rounded submit px-3">Sign In</button>--%>
		            </div>
		            <div class="form-group d-md-flex">
		            	<div class="w-50 text-left">
			            	<label class="checkbox-wrap checkbox-primary mb-0">Recordar
									  <input type="checkbox" checked>
									  <span class="checkmark"></span>
										</label>
									</div>
									<div class="w-50 text-md-right">
										<a href="#">Contraseña Olvidada</a>
									</div>
		            </div>
		          </div>
		          <p class="text-center">¿No sos miembro? <a data-toggle="tab" href="#signup">Inscribirse</a></p>
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>
</form>

	<script src="loginmascara/js/bootstrap.min.js"></script>
	<script src="loginmascara/js/jquery.min.js"></script>
	<script src="loginmascara/js/main.js"></script>
	<script src="loginmascara/js/popper.js"></script>
	</body>
</html>
