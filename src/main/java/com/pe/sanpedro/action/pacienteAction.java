package com.pe.sanpedro.action;

import com.opensymphony.xwork2.ActionSupport;
import com.pe.sanpedro.model.*;
import com.pe.sanpedro.service.pacienteService;

public class pacienteAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private paciente paciente;
	private String usuario,clave, estado,nombreCompleto,dni,correo,direccion,fechaNac,celular,est;
	private int idTipo;
	private String msj;
	private String respuesta ="";
	private int idPaciente;

	
	public String registrarPaciente() {
		
		try {

			
			pacienteService ps = new pacienteService();
			int registro = ps.registrarPaciente(dni,clave, "H", 2,nombreCompleto,dni,correo,direccion,fechaNac,celular,"H");
					
			if(registro != 0){
				//setMsj("Registrado");
				System.out.println("registrado");
				respuesta="exito";
				
			}else {
				//setMsj("Error al Agregar");
				System.out.println("no registrado");
				respuesta="error";
				
			}
			
				}catch(Exception ex) {
					ex.printStackTrace();
					respuesta="error";
				}
				
				return respuesta;
		
	}
	
	public String actualizar() throws Exception {
		paciente = new paciente();
		paciente.setCorreo(correo);
		paciente.setDireccion(direccion);
		paciente.setCelular(celular);
		paciente.setIdPaciente(idPaciente);
		pacienteService service = new pacienteService();
		System.out.println("Actualizando paciente");

		boolean registro = service.actualizarEmpleado(paciente);
		if (registro) {
			System.out.println("Error al Actualizar");
			return ERROR;
		} else {
			System.out.println("Actualizado");
			return SUCCESS;
		}
	}

	public paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(paciente paciente) {
		this.paciente = paciente;
	}

	public String getMsj() {
		return msj;
	}

	public void setMsj(String msj) {
		this.msj = msj;
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

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getNombreCompleto() {
		return nombreCompleto;
	}

	public void setNombreCompleto(String nombreCompleto) {
		this.nombreCompleto = nombreCompleto;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getFechaNac() {
		return fechaNac;
	}

	public void setFechaNac(String fechaNac) {
		this.fechaNac = fechaNac;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getEst() {
		return est;
	}

	public void setEst(String est) {
		this.est = est;
	}

	public int getIdTipo() {
		return idTipo;
	}

	public void setIdTipo(int idTipo) {
		this.idTipo = idTipo;
	}

	public int getIdPaciente() {
		return idPaciente;
	}

	public void setIdPaciente(int idPaciente) {
		this.idPaciente = idPaciente;
	}
	
	
	
	
	
}
