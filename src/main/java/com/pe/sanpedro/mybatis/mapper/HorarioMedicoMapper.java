package com.pe.sanpedro.mybatis.mapper;


import java.util.HashMap;
import java.util.List;
import com.pe.sanpedro.model.HorarioMedico;
import com.pe.sanpedro.model.Medico;

public interface HorarioMedicoMapper {
	public List<HorarioMedico> listado()throws Exception;
	
	public List<Medico> listaMedicosxEspecialidad(int id)throws Exception;
	
	public List<HorarioMedico> listadoHorario(int idMedico)throws Exception;
	
	public List<HorarioMedico> mostraHoras(HashMap<Object, Object>params)throws Exception;
	
}

