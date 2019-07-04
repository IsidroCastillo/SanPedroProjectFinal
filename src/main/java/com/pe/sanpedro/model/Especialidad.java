package com.pe.sanpedro.model;

public class Especialidad {

	private int id;
	private String descripcion;
	private double precio;

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
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	@Override
	public String toString() {
		return "Especialidad [id=" + id + ", descripcion=" + descripcion + ", precio=" + precio + "]";
	}
	
}
