package com.pe.sanpedro.action;

import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.pe.sanpedro.model.HorarioMedico;
import com.pe.sanpedro.model.horasTurno;
import com.pe.sanpedro.service.HorarioMedicoService;

public class HorarioAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private List<HorarioMedico> lstHorario;
	private List<horasTurno> horaTurno;
	private List<HorarioMedico> lstHoras;
	private String fechaIni;
	private String fechaFin;
	private int idMedico;
	private Date fechaTurno;

	public String listarHorario() {
		HorarioMedicoService servicio = new HorarioMedicoService();

		lstHorario = servicio.listadoHorario(idMedico);



		if (lstHorario == null) {
			addActionError("Listado Vacío");
			return ERROR;
		} else {
			return SUCCESS;
		}
	}
	
	public String listaHoras() {
		HorarioMedicoService servicio = new HorarioMedicoService();

		horaTurno = servicio.listHoras();



		if (horaTurno == null) {
			addActionError("Listado Vacío");
			return ERROR;
		} else {
			return SUCCESS;
		}
	}
	
	
	public String mostrarHoras() {
		HorarioMedicoService servicio = new HorarioMedicoService();

		lstHoras = servicio.mostrarHoras(idMedico, fechaTurno);


		if (lstHoras == null) {
			addActionError("Listado Vacío");
			return ERROR;
		} else {
			return SUCCESS;
		}
	}

	public List<HorarioMedico> getLstHorario() {
		return lstHorario;
	}

	public void setLstHorario(List<HorarioMedico> lstHorario) {
		this.lstHorario = lstHorario;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getFechaIni() {
		return fechaIni;
	}

	public void setFechaIni(String fechaIni) {
		this.fechaIni = fechaIni;
	}

	public String getFechaFin() {
		return fechaFin;
	}

	public void setFechaFin(String fechaFin) {
		this.fechaFin = fechaFin;
	}


	public List<HorarioMedico> getLstHoras() {
		return lstHoras;
	}


	public void setLstHoras(List<HorarioMedico> lstHoras) {
		this.lstHoras = lstHoras;
	}


	public int getIdMedico() {
		return idMedico;
	}


	public void setIdMedico(int idMedico) {
		this.idMedico = idMedico;
	}


	public Date getFechaTurno() {
		return fechaTurno;
	}


	public void setFechaTurno(Date fechaTurno) {
		this.fechaTurno = fechaTurno;
	}

	public List<horasTurno> getHoraTurno() {
		return horaTurno;
	}

	public void setHoraTurno(List<horasTurno> horaTurno) {
		this.horaTurno = horaTurno;
	}
	
	
}
