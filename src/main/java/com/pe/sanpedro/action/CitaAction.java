package com.pe.sanpedro.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.pe.sanpedro.model.cita;
import com.pe.sanpedro.service.CitaService;
import com.pe.sanpedro.service.HorarioMedicoService;
import com.pe.sanpedro.service.pacienteService;


public class CitaAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int idCita;
	private Date fechaCita;
	private String fechaEmision;
	private int idMedico;
	private int idPaciente;
	private String motivo;
	private String hora;
	private String respuesta ="";
	private int registro=0;
	
	private String usu,pass;
	
	private List<cita> listaCitas;
	private List<cita> lstCitasPacientes;
	
	public String registrarCita() {
		

			try {
				
				CitaService ps = new CitaService();
				registro = ps.registrarCita(fechaCita, idMedico, idPaciente,motivo,hora);
						
				if(registro != 0){
					//setMsj("Registrado");
					System.out.println("registrado");
					return SUCCESS;
					
				}else {
					//setMsj("Error al Agregar");
					System.out.println("no registrado");
					return ERROR;
					
				}
				
					}catch(Exception ex) {
						ex.printStackTrace();
						return ERROR;
					}
					
					
			
		
	}
	
	
	public String listarCitas() {
		CitaService servicio = new CitaService();

		listaCitas = servicio.listarCitas(usu, pass);


		if (listaCitas == null) {
			addActionError("Listado Vacío");
			return ERROR;
		} else {
			return SUCCESS;
		}
	}
	
	public String listarCitasPacientes() {
		CitaService servicio = new CitaService();

		lstCitasPacientes = servicio.listarCitasPacientes(idPaciente);


		if (lstCitasPacientes == null) {
			addActionError("Listado Vacío");
			return ERROR;
		} else {
			return SUCCESS;
		}
	}

	
	
	public List<cita> getLstCitasPacientes() {
		return lstCitasPacientes;
	}


	public void setLstCitasPacientes(List<cita> lstCitasPacientes) {
		this.lstCitasPacientes = lstCitasPacientes;
	}


	public int getIdCita() {
		return idCita;
	}
	public void setIdCita(int idCita) {
		this.idCita = idCita;
	}
	public Date getFechaCita() {
		return fechaCita;
	}
	public void setFechaCita(Date fechaCita) {
		this.fechaCita = fechaCita;
	}
	
	public String getFechaEmision() {
		return fechaEmision;
	}


	public void setFechaEmision(String fechaEmision) {
		this.fechaEmision = fechaEmision;
	}


	public int getIdMedico() {
		return idMedico;
	}
	public void setIdMedico(int idMedico) {
		this.idMedico = idMedico;
	}
	public int getIdPaciente() {
		return idPaciente;
	}
	public void setIdPaciente(int idPaciente) {
		this.idPaciente = idPaciente;
	}
	public String getMotivo() {
		return motivo;
	}
	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	public String getRespuesta() {
		return respuesta;
	}

	public void setRespuesta(String respuesta) {
		this.respuesta = respuesta;
	}


	public int getRegistro() {
		return registro;
	}


	public void setRegistro(int registro) {
		this.registro = registro;
	}


	public List<cita> getListaCitas() {
		return listaCitas;
	}


	public void setListaCitas(List<cita> listaCitas) {
		this.listaCitas = listaCitas;
	}


	public String getUsu() {
		return usu;
	}


	public void setUsu(String usu) {
		this.usu = usu;
	}


	public String getPass() {
		return pass;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
}
