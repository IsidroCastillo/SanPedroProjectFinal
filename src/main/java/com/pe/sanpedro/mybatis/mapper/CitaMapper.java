package com.pe.sanpedro.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.pe.sanpedro.model.cita;

public interface CitaMapper {

	public int registrar(HashMap<Object, Object>params) throws Exception;
	
	public List<cita> listaCitas(HashMap<Object, Object>params)throws Exception;
	
	public List<cita> listaCitasPacientes(HashMap<Object, Object>params)throws Exception;

}
