<%@taglib uri="/struts-jquery-tags" prefix="sj"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clínica - San Pedro</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Health medical template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="images/favicon.ico"/>
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/login.css">
<link rel="stylesheet" type="text/css" href="styles/news_responsive.css">
<sj:head jqueryui="true" jquerytheme="cupertino" locale="es" />

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
										<a href="#">health<span>+</span></a>
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
		<!-- Login -->
		
		<div class="col-lg-4 mx-auto">
			<div class="info_form_container">
			<a href="listando" class="text-center">Horario</a>
				<div class="info_form_title text-center">Bienvenido</div>
				<form action="login" class="info_form" id="info_form" method="post">
					<input type="text" name="usuario" class="info_input"
						placeholder="DNI" required="required">
					<input type="password" name="password"
							 class="info_input" placeholder="Contraseña">
					<button class="info_form_button">Ingresar</button>
					<a class="a text-center" href="registrarPaciente.jsp">Es nuevo aquí? Haga su registro</a>
				</form>
			</div>
		</div>
	</div>
	
	

	<script src="js/jquery-3.3.1.min.js"></script>
	
	<script src="styles/bootstrap4/popper.js"></script>
	<script src="styles/bootstrap4/bootstrap.min.js"></script>
	<script src="plugins/greensock/TweenMax.min.js"></script>
	<script src="plugins/greensock/TimelineMax.min.js"></script>
	<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
	<script src="plugins/greensock/animation.gsap.min.js"></script>
	<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
	<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="plugins/easing/easing.js"></script>
	<script src="plugins/parallax-js-master/parallax.min.js"></script>
	<script src="js/news.js"></script>
</body>
</html>