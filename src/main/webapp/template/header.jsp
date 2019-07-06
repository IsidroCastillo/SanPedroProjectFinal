<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>
<%@taglib uri="/struts-bootstrap-tags" prefix="sb"%>
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
    <script src = " https://unpkg.com/sweetalert/dist/sweetalert.min.js " > </script> 
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
    
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
.btn-default {
	background: #8000ff;
	color: #fff;
}

.btn-default:hover {
	background: #8000ff;
	color: #fff;
}
.reserva:hover {
	color: rgba(255, 255, 255, 0.75);
}
.dropdown:hover>.dropdown-menu {
  display: block;
}

.dropdown>.dropdown-toggle:active {
    pointer-events: none;
    color: black;
}
.text{
	font-weight: bold;
}
</style>

</head>

<div class="home">
		<div class="menu trans_500">
			<div
				class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
				<div class="menu_close_container">
					<div class="menu_close"></div>
				</div>

				<ul>
					<li class="menu_item"><a href="inicio.jsp">Inicio</a></li>
					<li class="menu_item"><a href="#">La Clínica</a></li>
					<li class="menu_item"><a href="#">Citas en Linea</a></li>
					<li class="menu_item"><a href="#">Servicios</a></li>
					<li class="menu_item"><a href="#">Contacto</a></li>
					<li class="menu_item"><a href="login.jsp">Pide tu Cita</a></li>
					<li><a href="" class="reserva text-uppercase ">
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
											class="d-flex flex-row align-items-center justify-content-start" id="btnMenus">

										</ul>
										</nav>
										<div
											class="search_content d-flex flex-row align-items-center
														 justify-content-center ml-auto">
											<ul class="">
											<li>
												<div class="dropdown">
													<a data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false"
														class="reserva text-uppercase dropdown-toggle text-white"
														id="dropdownMenuButton"> <i class="fa fa-user"
														aria-hidden="true"></i> <s:property
															value="#session.nombre" /></a>
													<div class="dropdown-menu"
														aria-labelledby="dropdownMenuButton">
														<a class="dropdown-item" data-toggle="modal"
															data-target="#modalActualizar" href="#">Actualizar
															Cuenta
														</a> 
														<a class="dropdown-item" data-toggle="modal"
															data-target="#modalContraseña" href="#">Cambiar Clave</a>
														<a class="dropdown-item" href="logout">Cerrar Sesión</a>
													</div>
												</div>
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
	
	
	<!-- ACTUALIZAR PACIENTE -->
	<div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" id="modalActualizar"
		aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Actualizar cuenta</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<br>
				<div class="container">
					<form label="Actualización del Producto" id="formActualizar">

					</form>
				</div>

			</div>
		</div>
	</div>

	<!-- CAMBIAR CONTRASEÑA -->
	<div class="modal fade cambiarClave" tabindex="-1" role="dialog" id="modalContraseña"
		aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Cambiar contraseña</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<br>
				<div class="container">
					<form label="Actualización del Producto">
						<div class="form-group">
							<input type="password" class="form-control" id="txtPass"
								placeholder="Contraseña actual">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="txtNuevaPass"
								placeholder="Contraseña nueva">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="txtRepitPass"
								placeholder="Repetir contraseña">
							<input type="hidden" class="form-control" id="txtIdUsuario"
								placeholder="Repetir contraseña" value="<s:property value="#session.idUsu"/>">
						</div>
						<div class="modal-footer">
							<s:submit id="btnCambiarClave" value="Actualizar" cssClass="btn btn-default btn-block" />
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
	<div class="container">
	  <div class="modal" id="myModal">
	    <div class="modal-dialog">
	      <div class="modal-content">
	        <div class="modal-header">
	          <h4 class="modal-title">Tarjeta de Salud San Pedro</h4>
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	        </div>
	        <div class="modal-body">
	         <p class="text text-justify"> Ahora podrás afiliarte virtualmente a la y accede a grandes descuentos.
			  Tarifas preferenciales en los servicios de atención ambulatoria, emergencia
			   y hospitalización además de farmacia, laboratorio y exámenes auxiliares.</p>
			   <br>
			   <img class="mx-auto" alt="" src="images/tarjeta.jpg">
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Adquirir</button>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
	<div class="container">
	  <div class="modal" id="myModal2">
	    <div class="modal-dialog">
	      <div class="modal-content">
	        <div class="modal-header">
	          <h4 class="modal-title">Ubicación y Horarios</h4>
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	        </div>
	        <div class="modal-body">
	          <p class="text">Dirección: Av. Los Laureles 436 - Urb. California - Trujillo</p>
	          <p class="text">Ciudad: Trujillo</p>
	          <p class="text">Horario de Atención:<br> Lunes a viernes de 9:00 am - 1:00 pm <br> y de 4:00 pm - 9:00 pm <br>
	          	 Sábados de 9:00 am - 1:00 pm y de 5:00 pm 8:00 pm. </p>
	          <p class="text">Emergencias: atención 24 horas</p>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
	<input type="hidden" id="tipoUsuario" value="<s:property value="#session.tipoUsuario" />">
	<script type="text/javascript">
	
	 $(document).ready(function () { 
		 
		 var id = $('#id').val();
		 var pass = $('#pass').val();
		 var tipoUsuario = $('#tipoUsuario').val();
		 var output = '';
		 model = '';
		 if(tipoUsuario =="Medico"){
			 output += 
				'<li class="active"><a href="principal.jsp">Inicio</a></li>' +
				'<li><a href="horarioMedico.jsp">Horario</a></li>';
				
			 model += 
			 
					' <div class="form-group"><s:hidden type="text" name="idPaciente"  class="form-control" disabled="disabled"></s:hidden></div>'+
					'<div class="form-group"><input type="text" name="paciente.dni"  class="form-control"  disabled="disabled" value="<s:property value="#session.idMedico" />"></div>'+
					'<div class="form-group"><input type="text" name="paciente.nombreCompleto" class="form-control"  placeholder="Nombre Completo" value="<s:property value="#session.nombre" />"></div>'+
					'<div class="form-group"><input type="text" name="paciente.correo" class="form-control" placeholder="Correo electrónico" value="<s:property value="#session.correo" />"></div>'+
					'<div class="form-group"><input type="text" name="paciente.direccion" class="form-control" placeholder="Dirección" value="<s:property value="#session.dni" />"></div>'+
					'<div class="form-group"><input id="fechaNacimiento" type="text" name="paciente.fecha_nacimiento" class="form-control" placeholder="Fecha Nacimiento" value="<s:property value="#session.especialidad" />"></div>'+
					
					'<div class="modal-footer"><button type="button" id="btnActualizarM" onClick="actualizar();" class="btn btn-default btn-block">Actualizar</<button</div>';
			 

		 }else {
			
			 output += 
					'<li class="active"><a href="principal.jsp">Inicio</a></li>' +
					'<li><a href="#" data-toggle="modal" data-target="#myModal">Tarjeta Salud San Pedro</a></li>'+
					'<li><a href="reservarCita.jsp">Reservar Cita</a></li>'+
					'<li><a href="#" data-toggle="modal" data-target="#myModal2">Contactanos</a></li>'+
					'<li><a href="#">Mis Resultados</a></li>';
					
					
					
			 model += 
				
					
					'<div class="form-group"><input type="hidden" id="txtId"   class="form-control"  disabled="disabled" value="<s:property value="#session.idPaciente" />"></div>'+
					'<div class="form-group"><input type="text" id="txtPaciente" disabled="disabled" class="form-control"  placeholder="Nombre Completo" value="<s:property value="#session.nombre" />"></div>'+
					'<div class="form-group"><input type="text" id="txtCorreo" class="form-control" placeholder="Correo electrónico" value="<s:property value="#session.correo" />"></div>'+
					'<div class="form-group"><input type="text" id="txtDireccion" class="form-control" placeholder="Dirección" value="<s:property value="#session.direccion" />"></div>'+
					'<div class="form-group"><input id="fechaNacimiento" disabled="disabled" type="text" name="paciente.fecha_nacimiento" class="form-control" placeholder="Fecha Nacimiento" value="<s:property value="#session.fechaNac" />"></div>'+
					'<div class="form-group"><input type="text" id="txtCel" class="form-control" placeholder="Celular" value="<s:property value="#session.cel" />"></div>' +
					'<div class="modal-footer"><button type="button" id="btnActualizarP" onClick="actualizarP();" class="btn btn-default btn-block">Actualizar</<button</div>';
					
		 }
			
		 $('#btnMenus').append(output);
		 $('#formActualizar').append(model);
		
		 
		 
		 actualizarP = function(){
			 var id = $('#txtId').val();
			 var correo = $('#txtCorreo').val();
			 var cel = $('#txtCel').val();
			 var direccion = $('#txtDireccion').val();
			 
			 $.ajax({			
					type:"POST",
					url:"actualizarPac.action",
					data : "idPaciente=" + id + "&correo=" + correo + "&direccion=" + direccion + "&celular=" + cel,
					success: function(result){
						
						  swal({
				              title: "Actualizado Completado!",
				              text: "Se actualizaron correctamente sus datos",
				              icon: "success",
				              button: "Listo!",
				              
				            }).then((value) => {
				                 location.href = 'principal.jsp'; 
				            });
						
					},
					error: function(result){
						alert("Some error occured.");
					}
				});
			 
			 
		 }
		 
		 $('#txtRepitPass').keyup(function(){
			 var rep = $('#txtRepitPass').val();
			 var nuevaContra = $('#txtNuevaPass').val();
			 var TamNueva = $('#txtNuevaPass').val().length;
			
			 var lt = $('#txtRepitPass').val().length;
			// alert(nuevaContra);
			 if(lt >= TamNueva){
				 if(rep != nuevaContra){
					 alert("Contraseñas no coinciden!!")
					 $('#txtRepitPass').val("");
				 }
			 }
			 
			 
			
			 
		 });
		 
		 
		 $('#btnCambiarClave').click(function(e){
			 e.preventDefault();
			 
			 var clave = $('#txtPass').val();
			 var nuevaContra = $('#txtNuevaPass').val();
			 var idUsuario = $('#txtIdUsuario').val();
			 
				$.ajax({			
					type:"POST",
					url:"actualizarPass.action",
					data : "clave=" + clave + "&nuevaContra=" + nuevaContra + "&idUsuario=" + idUsuario,
					success: function(result){
						
						swal({
				              title: "Actualizado Completado!",
				              text: "Se actualizo su nueva Contraseña!",
				              icon: "success",
				              button: "Listo!",
				              
				            }).then((value) => {
				                 location.href = 'principal.jsp'; 
				            });
						
					},
					error: function(result){
						alert("Some error occured.");
					}
				});
			 
			 
			 
		 });
		 

	 });
	
	</script>
	
	