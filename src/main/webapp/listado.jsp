<%@ taglib uri="/struts-tags" prefix="s"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	
		<center>
			<h1>Listado de Horarios</h1>
		</center>
	

	</div>
	<div class="whole-wrap">
		<div class="container">
			<div class="section-top-border">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="table-responsive m-t-20 no-wrap">
								<table class="table table-striped vm no-th-brd pro-of-month table-bordered"
									id="tblListDetalle" table-striped>
									<thead>
										<tr>
											<th hidden>Tercero</th>
											<th>Dia</th>
											<th>Hora Inicio</th>
											<th>Hora Fin</th>
											<th>Turno</th>

											<th>Reservar</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="lstHorario">
											<tr>
												<td><s:property value="descripcion" /></td>
												<td><s:property value="horario_inicio" /></td>
												<td><s:property value="horario_fin" /></td>
												<td><s:property value="turno" /></td>
												<td><a href="#" class="btn btn-sm btn-brand">Warning <span
														class="lnr lnr-arrow-right"></span></a></td>
											</tr>
										</s:iterator>
									</tbody>
								</table>
							</div>

						</div>
						<!-- panel -->
					</div>
					<!-- col -->
				</div>
				<!-- row -->
			</div>
		</div>
	</div>
	<br>
	<br>

</body>
</html>