<%@taglib uri="/struts-bootstrap-tags" prefix="sb"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinica - San Pedro</title>

<link rel="icon" type="image/png" href="images/favicon.ico"/>
<sj:head jqueryui="true" jquerytheme="cupertino" locale="es" />
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/login.css">
<script src = " https://unpkg.com/sweetalert/dist/sweetalert.min.js " > </script> 
         

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
.dropdown:hover>.dropdown-menu {
  display: block;
}

.dropdown>.dropdown-toggle:active {
    pointer-events: none;
    color: black;
}
</style>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">
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
										<li class="active"><a href="principal.jsp">Inicio</a></li>
										<li><a href="horarioMedico.jsp">Horario</a></li>
										
									</ul>
									</nav>
									<div
										class="search_content d-flex flex-row align-items-center
														 justify-content-end ml-auto">
										<ul>
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
	<!-- 	WIZARD -->
	<br>
	<br>
	<br>
	<input type="hidden" id="idMedico" value="<s:property value="#session.idMedico" />">
				<div class="top-content border-0">
		<div class="container">
			<div class="row">
				<div
					class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 form-box">			
					<div class="panel-body">
							  <table class="table table-bordered table-responsive" id="tblListMedicos">
								 <thead class="thead-dark text-dark">
								  <tr>
									<th class="">Dia</th>
									<th class="">Hora Inicio</th>
									<th class="">Hora Fin</th>
									<th class="">Turno</th>
									
								  </tr>
								</thead>
								<tbody>
								   
								</tbody>
							  </table>
							</div> <!-- panel body -->
							
</div>
</div>
</div>
</div>
	
	    <script type="text/javascript">
	
	 $(document).ready(function () { 
			var idMedico = $('#idMedico').val();
				$.ajax({			
					type:"POST",
					url:"horarioMedico.action",
					data : "idMedico=" + idMedico,
					success: function(result){
						var output = '';
						$.each(result.lstHorario, function(i,item){
							
							output += 
								'<tr>' +
								'	<td>'+item.descripcion+'</td>' +          
								'	<td>'+item.horario_inicio+'</td>' +
								'	<td>'+item.horario_fin+'</td>' +		
								'	<td>'+item.turno+'</td>' +	
						        '</tr>';
							
						});
						
						$('#tblListMedicos tbody').append(output);
						
					},
					error: function(result){
						alert("Some error occured.");
					}
				});
	 });
	
	</script>
	
	

	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.backstretch.min.js"></script>
	<script src="assets/js/retina-1.1.0.min.js"></script>
	<script src="assets/js/scripts.js"></script>
</body>
</html>