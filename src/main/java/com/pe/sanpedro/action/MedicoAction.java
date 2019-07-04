package com.pe.sanpedro.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;
import com.pe.sanpedro.model.Especialidad;
import com.pe.sanpedro.model.HorarioMedico;
import com.pe.sanpedro.model.Medico;
import com.pe.sanpedro.service.EspecialidadService;
import com.pe.sanpedro.service.HorarioMedicoService;
@ParentPackage(value="default")
public class MedicoAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private List<Medico> lstMedicos;
	private List<HorarioMedico> listaMedicoxID;
	private List<String> listHoras;
	private int idMedico;
	private Date fechaTurno;
	private int id;
	private EspecialidadService es = new EspecialidadService();
	
	private List<Especialidad> lstEspecialidades = new ArrayList<>() ;

	@Action(value="/listarEsp", results= { @Result(name="success", type="json") })
	public String listarEspecialidad() throws Exception {
		try {
			lstEspecialidades = es.listaEspecialidades();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String listaMedico() {
		HorarioMedicoService servicio = new HorarioMedicoService();

		lstMedicos = servicio.listadoMedicos(id);

		if (lstMedicos == null) {
			addActionError("Listado Vacío");
			return ERROR;
		} else {
			return SUCCESS;
		}
	}
	
	public String listaMedicoPorFecha() {
		HorarioMedicoService servicio = new HorarioMedicoService();

		listaMedicoxID = servicio.mostrarHoras(idMedico, fechaTurno);
		
		if (listaMedicoxID == null) {
			addActionError("Listado Vacío");
			return ERROR;
		} else {
			return SUCCESS;
		}
	}
	
	

	public EspecialidadService getEs() {
		return es;
	}

	public void setEs(EspecialidadService es) {
		this.es = es;
	}

	public List<Especialidad> getLstEspecialidades() {
		return lstEspecialidades;
	}

	public void setLstEspecialidades(List<Especialidad> lstEspecialidades) {
		this.lstEspecialidades = lstEspecialidades;
	}
	
	public List<Medico> getLstMedicos() {
		return lstMedicos;
	}

	public void setLstMedicos(List<Medico> lstMedicos) {
		this.lstMedicos = lstMedicos;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<HorarioMedico> getListaMedicoxID() {
		return listaMedicoxID;
	}

	public void setListaMedicoxID(List<HorarioMedico> listaMedicoxID) {
		this.listaMedicoxID = listaMedicoxID;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public List<String> getListHoras() {
		return listHoras;
	}

	public void setListHoras(List<String> listHoras) {
		this.listHoras = listHoras;
	}
	
	


}
