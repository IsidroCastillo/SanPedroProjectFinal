package com.pe.sanpedro.mybatis.mapper;

import java.util.HashMap;


public interface PacienteMapper {

	public int registrar(HashMap<Object, Object>params) throws Exception;
	public int actualizar(HashMap<Object, Object>params) throws Exception;
	public int actualizarContra(HashMap<Object, Object>params) throws Exception;
}
