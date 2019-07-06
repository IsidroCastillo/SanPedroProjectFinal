<%@taglib uri="/struts-bootstrap-tags" prefix="sb"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinica - San Pedro</title>
<link rel="icon" type="image/png" href="images/favicon.ico"/>
<sj:head jqueryui="true" jquerytheme="cupertino" locale="es" />
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap4/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<!-- Nuevo -->
	<link rel="stylesheet" type="text/css" href="wizard2/css/multi-form.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
	<script type="text/javascript" src="wizard2/js/multi-form.js"></script>
<style type="text/css">
.reserva {
	fdisplay: block;
	position: relative;
	height: 100%;
	font-size: 13px;
	font-weight: 600;
	color: #FFFFFF;
	z-index: 1;
	text-transform: uppercase;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}

.reserva:hover {
	color: rgba(255, 255, 255, 0.75);
}
</style>
<script type="text/javascript">
		$(document).ready(function(){
			$.validator.addMethod('date', function(value, element, param) {
				return (value != 0) && (value <= 31) && (value == parseInt(value, 10));
			}, 'Please enter a valid date!');
			$.validator.addMethod('month', function(value, element, param) {
				return (value != 0) && (value <= 12) && (value == parseInt(value, 10));
			}, 'Please enter a valid month!');
			$.validator.addMethod('year', function(value, element, param) {
				return (value != 0) && (value >= 1900) && (value == parseInt(value, 10));
			}, 'Please enter a valid year not less than 1900!');
			$.validator.addMethod('username', function(value, element, param) {
				var nameRegex = /^[a-zA-Z0-9]+$/;
				return value.match(nameRegex);
			}, 'Only a-z, A-Z, 0-9 characters are allowed');

			var val	=	{
			    // Specify validation rules
			    rules: {
			      fname: "required",
			      email: {
					        required: true,
					        email: true
					      },
					phone: {
						required:true,
						minlength:10,
						maxlength:10,
						digits:true
					},
					date:{
						date:true,
						required:true,
						minlength:2,
						maxlength:2,
						digits:true
					},
					month:{
						month:true,
						required:true,
						minlength:2,
						maxlength:2,
						digits:true
					},
					year:{
						year:true,
						required:true,
						minlength:4,
						maxlength:4,
						digits:true
					},
					username:{
						username:true,
						required:true,
						minlength:4,
						maxlength:16,
					},
					password:{
						required:true,
						minlength:8,
						maxlength:16,
					}
			    },
			    // Specify validation error messages
			    messages: {
					fname: 		"First name is required",
					email: {
						required: 	"Email is required",
						email: 		"Please enter a valid e-mail",
					},
					phone:{
						required: 	"Phone number is requied",
						minlength: 	"Please enter 10 digit mobile number",
						maxlength: 	"Please enter 10 digit mobile number",
						digits: 	"Only numbers are allowed in this field"
					},
					date:{
						required: 	"Date is required",
						minlength: 	"Date should be a 2 digit number, e.i., 01 or 20",
						maxlength: 	"Date should be a 2 digit number, e.i., 01 or 20",
						digits: 	"Date should be a number"
					},
					month:{
						required: 	"Month is required",
						minlength: 	"Month should be a 2 digit number, e.i., 01 or 12",
						maxlength: 	"Month should be a 2 digit number, e.i., 01 or 12",
						digits: 	"Only numbers are allowed in this field"
					},
					year:{
						required: 	"Year is required",
						minlength: 	"Year should be a 4 digit number, e.i., 2018 or 1990",
						maxlength: 	"Year should be a 4 digit number, e.i., 2018 or 1990",
						digits: 	"Only numbers are allowed in this field"
					},
					username:{
						required: 	"Username is required",
						minlength: 	"Username should be minimum 4 characters",
						maxlength: 	"Username should be maximum 16 characters",
					},
					password:{
						required: 	"Password is required",
						minlength: 	"Password should be minimum 8 characters",
						maxlength: 	"Password should be maximum 16 characters",
					}
			    }
			}
			$("#myForm").multiStepForm(
			{
				// defaultStep:0,
				beforeSubmit : function(form, submit){
					console.log("called before submiting the form");
					console.log(form);
					console.log(submit);
				},
				validations:val,
			}
			).navigateTo(0);
		});
	</script>
</head>
<body>
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
		<div class="header_nav" id="header_nav_pin">
			<div class="header_nav_inner">
				<div class="header_nav_container">
					<div class="container">
						<div class="row">
							<div class="col">
								<div
									class="header_nav_content d-flex flex-row align-items-center justify-content-start">
									<nav class="main_nav">
									<ul
										class="d-flex flex-row align-items-center justify-content-start">
										<li class="active"><a href="index.html">Inicio</a></li>
										<li><a href="about.html">Tarjeta Salud San Pedro</a></li>
										<li><a href="reservarCita.jsp">Reservar Cita</a></li>
										<li><a href="news.html">Contactanos</a></li>
										<li><a href="contact.html">Mis Resultados</a></li>
									</ul>
									</nav>
									<div
										class="search_content d-flex flex-row align-items-center
														 justify-content-end ml-auto">
										<ul>
											<li><a href="reservarCita.jsp"
												class="reserva text-uppercase">Usuario</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</header>
	<!-- 	WIZARD -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="col-lg-4 mx-auto">
		<div class="info_form_container">
	<form id="myForm" action="#" method="POST" class="info_form mx-auto">
	<!-- Circles which indicates the steps of the form: -->
		<div style="text-align: center; margin-top: 40px;">
			<span class="step">1</span> <span class="step">2</span> <span
				class="step">3</span> <span class="step">4</span>
		</div>
		<h1>Register:</h1>
		<!-- One "tab" for each step in the form: -->
		<div class="tab">
			Name:
			<p> <input placeholder="First name..." name="fname"> </p>
			<p>
				<sj:select class="info_form_dep info_input info_select" id="idMantEspecialidad" href="listarEsp.action"
					label="Especialidad" name="cita.idEspecialidad"
					list="lstEspecialidades" listKey="id" listValue="descripcion"
					headerKey="-1" headerValue="Seleccionar Especialidad">
				</sj:select>
			</p>
		</div>
		<div class="tab">
			Contact Info:
			<p><input placeholder="E-mail..." name="email"></p>
			<p> <input placeholder="Phone..." name="phone"> </p>
		</div>
		<div class="tab">
			Birthday:
			<p> <input placeholder="dd" name="date"> </p>
			<p> <input placeholder="mm" name="month"> </p>
			<p> <input placeholder="yyyy" name="year"> </p>
		</div>
		<div class="tab">
			Login Info:
			<p> <input placeholder="Username..." name="username"> </p>
			<p> <input placeholder="Password..." name="password" type="password"> </p>
		</div>
		<div style="overflow: auto;">
			<div style="float: right;">
				<button type="button" class="previous">Previous</button>
				<button type="button" class="info_form_button next">Next</button>
				<button type="button" class="submit">Submit</button>
			</div>
		</div>
	</form>
	</div>
	</div>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-36251023-1' ]);
		_gaq.push([ '_setDomainName', 'jqueryscript.net' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
</body>
</html>