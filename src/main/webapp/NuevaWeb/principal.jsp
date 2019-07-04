<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinica - San Pedro</title>
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
<link rel="stylesheet" type="text/css" href="styles/principal.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<%-- <sj:head jqueryui="true" jquerytheme="cupertino" locale="es" /> --%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <script src="https://unpkg.com/gijgo@1.9.11/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.11/css/gijgo.min.css" rel="stylesheet" type="text/css" />
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

</head>
<body>
	<div class="home">
		<div class="menu trans_500">
			<div
				class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
				<div class="menu_close_container">
					<div class="menu_close"></div>
				</div>

				<ul>
					<li class="menu_item"><a href="index.html">Inicio</a></li>
					<li class="menu_item"><a href="#">La Clínica</a></li>
					<li class="menu_item"><a href="#">Citas en Linea</a></li>
					<li class="menu_item"><a href="news.html">Servicios</a></li>
					<li class="menu_item"><a href="contact.html">Contacto</a></li>
					<li class="menu_item"><a href="login.jsp">Pide tu Cita</a></li>
					<li><a href="" class="reserva text-uppercase">
					 	<i class="fa fa-user" aria-hidden="true"></i>
					  	<s:property value="#session.nombre" />
					  	</a>
					</li>
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
														 justify-content-start ml-auto">
											<ul>
												<li><a href="reservarCita.jsp"
													class="reserva text-uppercase"> <i class="fa fa-user"
														aria-hidden="true"></i> <s:property value="#session.nombre" /></a>
												</li>
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
	</div>
	<div>
		<h2 class="text-center">
			Bienvenido:
			<s:property value="#session.nombre" />
		</h2>
		<input type="text" id="id" value="<s:property value="#session.user" />">
		<input type="text" id="pass" value="<s:property value="#session.pass" />">
		<input type="text" id="tipoUsuario" value="<s:property value="#session.tipoUsuario" />">
		<p class="text-center" style="font-size: 15px;">Aquí podrás
			reservar, pagar, reprogramar tus citas y acceder a tu información de
			manera fácil y segura.</p>
		<div id="hola">
		
		<a href="horarioMedico.jsp">Horario</a>
		<a href="citasMedicas.jsp">Citas</a>
		
		</div>
	</div>
<script type="text/javascript">
	
	 $(document).ready(function () { 
		 
		 var id = $('#id').val();
		 var pass = $('#pass').val();
		 var tipoUsuario = $('#tipoUsuario').val();
		 var output = '';
		 
		 if(tipoUsuario =="Medico"){
			 //alert(id+pass);
// 			 output += 
// 					'<div>' +
// 					'	<input type="text" value="Hola">' +          				        
// 			        '</div>';

// 			 $.ajax({			
// 					type:"POST",
// 					url:"listarEsp.action",
// 					success: function(result){
						
// 						var output = '';
// 						$.each(result.lstEspecialidades, function(i,item){
// 							//alert(item.descripcion+item.id);
							
							
// 							alert(item.descripcion);
							
// 						});
						
						
						
// 					},
// 					error: function(result){
// 						alert("Some error occured.");
// 					}
// 				});










		 }else {
			 alert("Paciente");
			 output += 
					'<div>' +
					'	<input type="text" value="Hola Paciente">' +          				        
			        '</div>';
		 }
			
		 $('#hola').append(output);
		 
		 
// 		  $.ajax({			
// 				type:"POST",
// 				url:"listaMedicos.action",
// 				data : "id=" + idEspe,
// 				success: function(result){
// 					//alert(result);
					
					
				
					
// 				},
// 				error: function(result){
// 					alert("Some error occured.");
// 				}
// 			});
		 

	 });
	
	</script>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="styles/bootstrap4/popper.js"></script>
	<script src="styles/bootstrap4/bootstrap.min.js"></script>
	<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="plugins/easing/easing.js"></script>
	<script src="plugins/parallax-js-master/parallax.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>