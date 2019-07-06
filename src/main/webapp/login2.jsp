<%@taglib uri="/struts-bootstrap-tags" prefix="sb"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Especialidades</title>
<sj:head jqueryui="true" jquerytheme="cupertino" locale="es" />
<link rel="stylesheet" type="text/css" href="styles/login.css">
<sb:head />
</head>
<body>

	<a href="principal.jsp">Ingresar</a>
	<div class="col-lg-4 mx-auto">
		<div class="info_form_container">
			<div class="info_form_title">Bienvenido</div>
			<form action="#" class="info_form" id="info_form">
				<sj:select class="info_form_dep info_input info_select" id="idMantEspecialidad" href="listarEsp.action"
					label="Especialidad" name="cita.idEspecialidad"
					list="lstEspecialidades" listKey="id" listValue="descripcion"
					headerKey="-1" headerValue="Seleccionar Especialidad">
				</sj:select>
				<input type="text" class="info_input" placeholder="Name"
					required="required"> <input type="text" class="info_input"
					placeholder="Phone No">
				<button class="info_form_button">make an appointment</button>
			</form>
		</div>
	</div>
	<script src="NuevaWeb/styles/bootstrap4/popper.js"></script>
	<script src="NuevaWeb/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="NuevaWeb/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="NuevaWeb/plugins/easing/easing.js"></script>
	<script src="NuevaWeb/plugins/parallax-js-master/parallax.min.js"></script>
	<script src="NuevaWeb/js/custom.js"></script>
</body>
</html>