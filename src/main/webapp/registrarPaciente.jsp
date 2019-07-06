<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clínica - San Pedro</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Clínica San Pedro">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="images/favicon.ico"/>
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<link rel="stylesheet" type="text/css" href="styles/login.css">
</head>
<body>
	<div class="super_container">
		<div class="menu trans_500">
			<div
				class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
				<div class="menu_close_container">
					<div class="menu_close"></div>
				</div>
				<ul>
					<li class="menu_item"><a href="#">Factura Electrónica</a></li>
					<li class="menu_item"><a href="#">Servicios de Emergencia</a></li>
					<li class="menu_item"><a href="#">Web Médica</a></li>
				</ul>
			</div>
			<div class="menu_social">
				<ul>
					<li><a href="#"><i class="fa fa-pinterest"
							aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-facebook"
							aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"
							aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-dribbble"
							aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-behance"
							aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-linkedin"
							aria-hidden="true"></i></a></li>
				</ul>
			</div>
		</div>

		<!-- Home -->

		<div class="home">

			<!-- Header -->

			<header class="header" id="header">
			<div>
				<div class="header_top">
					<div class="container">
						<div class="row">
							<div class="col">
								<div
									class="header_top_content d-flex flex-row align-items-center justify-content-start">
									<div class="logo">
										<a href="#">San Pedro<span>+</span></a>
									</div>
									<div
										class="header_top_extra d-flex flex-row align-items-center justify-content-start ml-auto">
										<div class="header_top_nav">
											<ul
												class="d-flex flex-row align-items-center justify-content-start">
												<li><a href="#">Factura Electrónica</a></li>
												<li><a href="#">Servicios de Emergencia</a></li>
												<li><a href="#">Web Médica</a></li>
											</ul>
										</div>
										<div class="header_top_phone">
											<i class="fa fa-phone" aria-hidden="true"></i> <span>+34
												586 778 8892</span>
										</div>
									</div>
									<div class="hamburger ml-auto">
										<i class="fa fa-bars" aria-hidden="true"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			</header>
		</div>
		<div class="col-lg-4 mx-auto">
			<div class="info_form_container">
				<div class="info_form_title">Bienvenido a San Pedro</div>
				<form action="registrar" class="info_form" id="info_form" method="post">
					<input type="text" name="nombreCompleto" class="info_input"
						placeholder="Nombre Completo" required="required"> <input
						type="text" name="dni" class="info_input" id="dni"
						placeholder="DNI" required="required" onblur="validaNumericos();">
					<input type="text" name="correo" class="info_input"
						placeholder="Correo Electrónico" required="required">
					<input
						type="text" name="direccion" class="info_input"
						placeholder="Dirección"> 
					<input type="text"
						name="fechaNac" class="info_input" placeholder="Fecha Nacimiento"
						required="required"> 
					<input type="text" id="celular"
						name="celular" class="info_input" placeholder="Celular"
						required="required" onblur="validaNumericos();"> 
					<input
						type="password" name="clave" class="info_input"
						placeholder="Contraseña">
					<button class="info_form_button">Registrar</button>

				</form>
			</div>
		</div>
		<a href="principal.jsp">Datos Perdonales</a>
	</div>
	<script type="text/javascript">
		function validaNumericos() {
			var inputtxt = document.getElementById('celular');
			var valor = inputtxt.value;

			for (i = 0; i < valor.length; i++) {
				var code = valor.charCodeAt(i);
				if (code<=48 || code> = 57) {
					inputtxt.value = "";
					return;
				}
			}
			var inputtxt2 = document.getElementById('dni');
			var valor2 = inputtxt2.value;
			for (i = 0; i < valor2.length; i++) {
				var code = valor2.charCodeAt(i);
				if (code<=48 || code> = 57) {
					inputtxt2.value = "";
					return;
				}
			}
		}
	</script>
</body>
</html>