package com.pe.sanpedro.model;

import java.util.Date;

public class HorarioMedico {

	private String descripcion ;
    private String horario_inicio;
    private String horario_fin;
    private String fecha_inicio;
    private String fecha_fin;
    private String turno;
    private Date fechaTurno;
    
    private int id;
    
    
    
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getHorario_inicio() {
		return horario_inicio;
	}
	public void setHorario_inicio(String horario_inicio) {
		this.horario_inicio = horario_inicio;
	}
	public String getHorario_fin() {
		return horario_fin;
	}
	public void setHorario_fin(String horario_fin) {
		this.horario_fin = horario_fin;
	}
	public String getFecha_inicio() {
		return fecha_inicio;
	}
	public void setFecha_inicio(String fecha_inicio) {
		this.fecha_inicio = fecha_inicio;
	}
	public String getFecha_fin() {
		return fecha_fin;
	}
	public void setFecha_fin(String fecha_fin) {
		this.fecha_fin = fecha_fin;
	}
	public String getTurno() {
		return turno;
	}
	public void setTurno(String turno) {
		this.turno = turno;
	}
	public Date getFechaTurno() {
		return fechaTurno;
	}
	public void setFechaTurno(Date fechaTurno) {
		this.fechaTurno = fechaTurno;
	}
	
	
	
}
