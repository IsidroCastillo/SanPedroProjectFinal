<%@taglib uri="/struts-bootstrap-tags" prefix="sb"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@include file="/template/header.jsp" %>
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

.btn-next, .btn-submit{
background: #8000ff;
color: white;
}
.btn{
background: #8000ff;
color: white;
}
</style>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

	<!-- 	WIZARD -->
	<div class="top-content border-0">
		<div class="container">
			<div class="row">
				<div
					class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 form-box">
					<form role="form" action="" method="post" class="f1">

						<h3>Reservando Cita</h3>
						<p>Complete el formulario para completar la cita</p>
						<div class="f1-steps">
							<div class="f1-progress">
								<div class="f1-progress-line" data-now-value="16.66"
									data-number-of-steps="3" style="width: 16.66%;"></div>
							</div>
							<div class="f1-step active">
								<div class="f1-step-icon">
									<i class="fa fa-user"></i>
								</div>
								<p>Especialidad</p>
							</div>
							<div class="f1-step">
								<div class="f1-step-icon">
									<i class="fa fa-key"></i>
								</div>
								<p>Médico</p>
							</div>
							<div class="f1-step">
								<div class="f1-step-icon">
									<i class="fa fa-twitter"></i>
								</div>
								<p>Detalle</p>
							</div>
						</div>

						<fieldset>
							<h4>Seleccionar Especialidad</h4>

							   <div class="form-group">
                               <select class="form-control" id="especialidad" style="height: 34px;">
						        <option selected>Seleccionar Especialidad</option>      
						      </select>
                                
                                </div>
	
							<div class="f1-buttons">
								<button type="button" class="btn btn-next">Next</button>
							</div>
						</fieldset>

						<fieldset>
							<h4>Seleccionar Médico:</h4>
							<div class="panel-body">
							  <table class="table table-responsive" id="tblListMedicos">
								 <thead class="thead-dark">
								  <tr>
									<th class="">Médico</th>
									<th class="">Dni</th>
									<th class="">Correo</th>
									
								  </tr>
								</thead>
								<tbody>
								   
								</tbody>
							  </table>
							</div> <!-- panel body -->
							
							
							<div class="f1-buttons">
								<button type="button" class="btn btn-previous">Previous</button>
								<button type="button" class="btn btn-next">Next</button>
							</div>
						</fieldset>

						<fieldset>
							<h4>Detalle de Cita:</h4>
							<div class="form-group">
								<label class="col-sm-3 control-label" for="f1-facebook">Paciente:</label> 
								
								<input	type="text" name="f1-facebook" id="txtNombrePac"
									class="f1-facebook form-control" id="f1-facebook" value="<s:property value="#session.nombre" />" disabled="disabled">
									<input	type="hidden" name="f1-facebook" id="txIdPaciente"
									class="f1-facebook form-control" id="f1-facebook" value="<s:property value="#session.idPaciente" />">
							</div>
							<div class="form-group">
								<label class="control-label" for="f1-facebook">Especialidad:</label> 
								
								<input	type="text" name="f1-facebook" id="txtEspecialidad" class="f1-facebook form-control" id="f1-facebook" disabled="disabled">
							</div>
							
							<div class="form-group">
								<label class="control-label" for="f1-facebook">Medico:</label> 
								
								<input	type="text" name="f1-facebook" id="txMedico" class="f1-facebook form-control" id="f1-facebook" disabled="disabled">
								<input	type="hidden" name="f1-facebook" id="txidMedico" class="f1-facebook form-control" id="f1-facebook">
							
							</div>
							<div class="form-group">
								<label class="control-label" for="f1-facebook">Motivo:</label> 
								
								<input	type="text" name="f1-facebook" id="txMotivo" class="f1-facebook form-control" id="f1-facebook" disabled="disabled">
							</div>
							<div class="form-group">
								<label class="control-label" for="f1-facebook">Fecha:</label> 
								
								<input	type="text" name="f1-facebook" id="txFecha" class="f1-facebook form-control" id="f1-facebook" disabled="disabled">
							</div>
							<div class="form-group">
								<label class="control-label" for="f1-facebook">Hora:</label> 
								
								<input	type="text" name="f1-facebook" id="txHora" class="f1-facebook form-control" id="f1-facebook" disabled="disabled">
							</div>
							<div class="f1-buttons">
								<button type="button" class="btn btn-previous">Regresar</button>
								<button type="button" class="btn btn-submit" id="btnRegistroCita">Confirmar</button>
							</div>
						</fieldset>

					</form>
				</div>
			</div>

		</div>
	</div>
	
<!-- 	Model para ver los horarios Disponibles -->
	
	<div class="modal fade" id="modalHorario" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">

      <div class="modal-header bg-blue">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Fecha de Cita</h4>
      </div>

      <div class="modal-body">
	      <form class="form-horizontal" id="formModal">
	      	<!-- parametros ocultos -->
	      	<input type="hidden" id="mhdnIdMedico">
	      	<input type="hidden" id="txEspecialidad">
	      	<input type="hidden" id="txPrecio">
	      	
			<div class="box-body">
		        
		     
				<div class="form-group">
				<label class="col-sm-3 control-label">Seleccionar Dia:</label>
					<div class="col-sm-9"> 
                         <input type="date" name="fechaTurno" id="fechaTurno" class="form-control" required/>

                    </div>        
                 </div>
                                
		        <div class="form-group">
		            <label class="col-sm-3 control-label">Medico</label>
		            <div class="col-sm-9"> 
		              <input type="text" name="txtMedico" class="form-control" id="txtMedico" >
		            </div>
		        </div>
		        
		         <div class="form-group">
		            <label class="col-sm-3 control-label">Movito</label>
		            <div class="col-sm-9"> 
		              <input type="text" name="txtMovito" class="form-control" id="txtMotivo" >
		            </div>
		        </div>
		        
		        <div class="form-group" id="horas">
		            <label class="col-sm-1 control-label"></label>
		             
		        </div>

			</div>
		  </form>
      </div>
      


		
      <div class="modal-footer">
        <button type="button" class="btn btn-default" id="mbtnCerrarModal" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-default" id="mbtnDeleteImp">Eliminar </button>
      </div>
    </div>
  </div>
</div>




	
	    <script type="text/javascript">
	
	 $(document).ready(function () { 
		
				$.ajax({			
					type:"POST",
					url:"listarEsp.action",
					success: function(result){
						
						var output = '';
						$.each(result.lstEspecialidades, function(i,item){
							//alert(item.descripcion+item.id);
							
							
							$("#especialidad").append('<option value='+item.id+'>'+item.descripcion+'</option>');
							
						});
						
						
						
					},
					error: function(result){
						alert("Some error occured.");
					}
				});
				
				$("#especialidad").on('change', function() {
					var idEspe = this.value;
					$('#tblListMedicos tbody tr').remove();
					
					
					  $.ajax({			
							type:"POST",
							url:"listaMedicos.action",
							data : "id=" + idEspe,
							success: function(result){
								//alert(result);
								var output = '';
								$.each(result.lstMedicos, function(i,item){
									
									//alert(item.especialidad + item.precio);
									
									output += 
										'<tr>' +
										'	<td>'+item.nombreCompleto+'</td>' +          
										'	<td>'+item.dni+'</td>' +
										'	<td>'+item.correo+'</td>' +						        
'  	<td><a class="btn btn-default" data-toggle="modal" data-target="#modalHorario" onClick="horasTurno(\''+item.nombreCompleto+'\',\''+item.idMedico+'\',\''+item.especialidad+'\',\''+item.precio+'\');"><i class="fa fa-edit"></i> &nbsp;</a></td>' +
								        '</tr>';
									
									
								});
								
								$('#tblListMedicos tbody').append(output);
								
							},
							error: function(result){
								alert("Some error occured.");
							}
						});
					  
					  
					  
					});
				
				$("#fechaTurno").on('change', function() {
					
					$('#horas div').remove();
					var fecha = this.value;
					var idMedico = $('#mhdnIdMedico').val();
					//alert(fecha +"  "+ idMedico);
					
 					  $.ajax({			
							type:"POST",
							url:"mostrarHoras.action",
							data : "idMedico=" + idMedico + "&fechaTurno=" + fecha,
							success: function(result){
								var output = '';
								$.each(result.listaMedicoxID, function(i,item){								
									var horasDia = 	 [ "6:30","7:00" ,"7:30" , "8:00","8:30","9:00","9:30","10:00","10:30"];
									var horasTarde = [ "12:00","12:30","13:00","13:30","14:00","14:30","15:00","15:30","16:00","16:30"];
									var horasNoche = [ "17:30" ,"18:00" , "18:30","19:00","19:30","20:00","20:30","21:00","21:30"];									
									var turno = item.turno;
									
									 switch (turno) {
					                  case 'Descanso':
					                    alert('Hola Descanso');
					                    
					                    break;
					                  case 'Tarde':
					                	 
					                	  horasTarde.forEach( function(valor, indice, array) {
		 								
		 									  output += 
		 									'<div class="col-sm-1" id="content">' +
		 									'<a href="#" title="Editar informacion" data-dismiss="modal" onClick="detalleCita(\''+valor+'\');"><button type="button" class="btn btn-next" id="mbtnHoras">'+valor+'</button></a>'+		 	
		 						            '</div>';
					                	  });
		 									  
		 									
		 									
					                	  
					                    break;
					                  
					                    case 'Noche':
					                    	
					                    	 horasNoche.forEach( function(valor, indice, array) {
					                    		 output += 
					 									'<div class="col-sm-1">' +
					 									'<a href="#" title="Editar informacion" data-dismiss="modal" onClick="detalleCita(\''+valor+'\');"><button type="button" class="btn btn-info" id="mbtnHoras">'+valor+'</button></a>'+
					 						            '</div>';
			 									});
					                    	
					                    break;
					                  default:
					                	 
					                  horasDia.forEach( function(valor, indice, array) {
					                	  output += 
			 									'<div class="col-sm-1">' +
			 									'<a href="#" title="Editar informacion" data-dismiss="modal" onClick="detalleCita(\''+valor+'\');"><button type="button" class="btn btn-info" id="mbtnHoras">'+valor+'</button></a>'+
			 						            '</div>';
	 									});
					                    break;
					                }
	
								});
								
								$('#horas').append(output);
								
							},
							error: function(result){
								alert("Some error occured.");
							}
						});
					
					
					
				});
				
				
				 horasTurno = function(nombreCompleto,id,especialidad,precio){
						//$('#mhdnIdA').val(id);
						$('#txtMedico').val(nombreCompleto);
						$('#mhdnIdMedico').val(id);
						$('#txEspecialidad').val(especialidad);
						$('#txPrecio').val(precio);
						
						
					};
					
					
					detalleCita = function(valor){
						
						
						
						var fecha = $('#fechaTurno').val();
						var idMedico = $('#mhdnIdMedico').val();
						var nombreMedico = $('#txtMedico').val();
						var motivo = $('#txtMotivo').val();
						var espec = $('#txEspecialidad').val();
						var precio = $('#txPrecio').val();
						var idMedico = $('#mhdnIdMedico').val();
						
						$('#txHora').val(valor);
						$('#txMedico').val(nombreMedico);
						$('#txidMedico').val(idMedico);
						$('#txFecha').val(fecha);
						$('#txMotivo').val(motivo);
						$('#txtEspecialidad').val(espec);
						/*Modificación */
// 						swal ( "¡ Buen trabajo! "+fecha , " Has hecho clic en el botón " , "success" )   ;
						/*Modificación */
						
						swal({
							  title: "¿Estas seguro?",
							  text: "Fecha seleccionada:"+fecha,
							  icon: "warning",
							  buttons: true,
							  warningMode: true,
							})
							.then((willDelete) => {
							  if (willDelete) {
							    
							  } else {
							    swal("Your imaginary file is safe!");
							  }
							});
						/**/
						
					};
					
					$('#btnRegistroCita').click(function(){
						
						var fecha = $('#txFecha').val();
						var idMedico = $('#txidMedico').val();
						var idPaciente = $('#txIdPaciente').val();
						var motivo = $('#txMotivo').val();			
						var hora = $('#txHora').val();
						
										
						
						  $.ajax({			
								type:"POST",
								url:"registroCitas.action",
								data : "fechaCita=" + fecha + "&idMedico=" + idMedico + "&idPaciente=" + idPaciente + "&motivo=" + motivo + "&hora=" + hora,
								success: function(result){
									 swal({
							              title: "Registro Completado!",
							              text: "Se registro correctamente la cita con para la fecha "+fecha+" "+hora,
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
	
	

	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.backstretch.min.js"></script>
	<script src="assets/js/retina-1.1.0.min.js"></script>
	<script src="assets/js/scripts.js"></script>
</body>
</html>