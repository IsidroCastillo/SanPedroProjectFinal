<%@include file="/template/header.jsp" %>

<body>
	
<div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center" style="padding-bottom: 15px;">
					<div class="section_title">Mis Citas</div>
<!-- 					<div class="section_subtitle">too choose from</div> -->
				</div>
			</div>
			<div class="row about_row row-eq-height">
				<div class="col-lg-4">
					
					<div class="about_text_highlight">
						<img alt="" src="images/logo.png">
					</div>
					
				</div>
				<div class="col-lg-8">
					<div class="about_text_2">
						<div class="table-responsive m-t-20 no-wrap">
                                    <table class="table table-striped vm no-th-brd pro-of-month" id="tblListCitasPaciente" table-striped>
                                        <thead>
<!--                                             <tr> -->
                                               
<!--                                                 <th class="">Fecha</th> -->
<!-- 												<th class="">Medico</th> -->
<!-- 												<th class="">Especialidad</th> -->
<!-- 												<th class="">Motivo</th> -->
<!-- 												<th class="">Hora Cita</th> -->
                                                
<!--                                                 <th></th> -->
<!--                                             </tr> -->
                                        </thead>
                                        <tbody>
                                            
                                        </tbody>
                                    </table>
                                </div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col" id="btnCita">
<!-- 					<div class="button about_button ml-auto mr-auto"><a href="reservarCita.jsp"><span>Reservar Cita</span><span>reservar cita</span></a></div> -->
				</div>
			</div>
		</div>
	</div>
	
	<input type="hidden" id="txtIdPac" value="<s:property value="#session.idPaciente" />">
	<input type="hidden" id="tipoUsuario" value="<s:property value="#session.tipoUsuario" />">
	<input type="hidden" id="txtUsu" value="<s:property value="#session.user" />">
	<input type="hidden" id="txtPas" value="<s:property value="#session.pass" />">
	
	
	<script type="text/javascript">
	 $(document).ready(function () { 
			
			var idPaciente = $('#txtIdPac').val();
			var tipoUsu = $('#tipoUsuario').val();
			var usu = $('#txtUsu').val();
			var pass = $('#txtPas').val();
			
			if(tipoUsu == "Medico"){
				
				 $.ajax({			
						type:"POST",
						url:"listarCitas.action",
						data : "usu=" + usu + "&pass=" + pass ,
						success: function(result){
							
							var output = '';
							var tblHeader = '';
							
							
							tblHeader += 
								'<tr>'+
	                        
			                        '<th class="">Fecha</th>'+
									'<th class="">Paciente</th>'+
									'<th class="">Motivo</th>'+
									'<th class="">Hora Cita</th>'+
			                        
			                        '<th></th>' +
	                   			 '</tr>';
							
	                   			$.each(result.listaCitas, function(i,item){
	    							
	    							output += 
	    								'<tr>' +
	    								'	<td>'+item.fecha+'</td>' +          
	    								'	<td>'+item.nombrecompleto+'</td>' +
	    								'	<td>'+item.motivo+'</td>' +		
	    								'	<td>'+item.hora+'</td>' +
	    								'  	<td><a class="btn btn-default" data-toggle="modal" data-target="#modalHorario" onClick="horasTurno(\''+item.nombreCompleto+'\',\''+item.idMedico+'\',\''+item.especialidad+'\',\''+item.precio+'\');"><i class="fa fa-edit"></i> &nbsp;</a></td>' +
	    						        '</tr>';
	    							
	    						});
							$('#tblListCitasPaciente thead').append(tblHeader);
							$('#tblListCitasPaciente tbody').append(output);

							
						},
						error: function(result){
							alert("Some error occured.");
						}
					});
				
				
			}else {
			
			 $.ajax({			
					type:"POST",
					url:"listarCitasPacientes.action",
					data : "idPaciente=" + idPaciente,
					success: function(result){
						
						var output = '';
						var tblHeader = '';
						var btnRegistCita = '';
						
						
						btnRegistCita += 
							'<div class="button about_button ml-auto mr-auto"><a href="reservarCita.jsp"><span>Reservar Cita</span><span>reservar cita</span></a></div>';
						
						
						tblHeader += 
							'<tr>'+
                        
		                        '<th class="">Fecha</th>'+
								'<th class="">Medico</th>'+
								'<th class="">Especialidad</th>'+
								'<th class="">Motivo</th>'+
								'<th class="">Hora Cita</th>'+
		                        
		                        '<th></th>' +
                   			 '</tr>';
						
						
						
						
						$.each(result.lstCitasPacientes, function(i,item){
							
							output += 
								'<tr>' +
								'	<td>'+item.fecha+'</td>' +          
								'	<td>'+item.medico+'</td>' +
								'	<td>'+item.descripcion+'</td>' +
								'	<td>'+item.motivo+'</td>' +		
								'	<td>'+item.hora+'</td>' +
								'  	<td><a class="btn btn-default" data-toggle="modal" data-target="#modalHorario" onClick="horasTurno(\''+item.nombreCompleto+'\',\''+item.idMedico+'\',\''+item.especialidad+'\',\''+item.precio+'\');"><i class="fa fa-edit"></i> &nbsp;</a></td>' +
						        '</tr>';
							
						});
						$('#tblListCitasPaciente thead').append(tblHeader);
						$('#btnCita').append(btnRegistCita);
						
						$('#tblListCitasPaciente tbody').append(output);

					},
					error: function(result){
						alert("Some error occured.");
					}
				});
	 }
			
			
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