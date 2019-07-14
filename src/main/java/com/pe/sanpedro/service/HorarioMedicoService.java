package com.pe.sanpedro.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.pe.sanpedro.model.HorarioMedico;
import com.pe.sanpedro.model.Medico;
import com.pe.sanpedro.model.horasTurno;
import com.pe.sanpedro.mybatis.MyBatisUtil;
import com.pe.sanpedro.mybatis.mapper.HorarioMedicoMapper;

public class HorarioMedicoService {
	public List<HorarioMedico> listado() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<HorarioMedico> lista = null;

		try {
			HorarioMedicoMapper hm = session.getMapper(HorarioMedicoMapper.class);
			lista = hm.listado();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return lista;
	}
	
	public List<Medico> listadoMedicos(int id) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Medico> lista = null;

		try {
			HorarioMedicoMapper hm = session.getMapper(HorarioMedicoMapper.class);
			lista = hm.listaMedicosxEspecialidad(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return lista;
	}
	
	
	public List<HorarioMedico> listadoHorario(int idMedico) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<HorarioMedico> lista = null;

		try {
			HorarioMedicoMapper hm = session.getMapper(HorarioMedicoMapper.class);
			lista = hm.listadoHorario(idMedico);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return lista;
	}
	
	public List<HorarioMedico> mostrarHoras(int id,Date fechaTur) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<HorarioMedico> lista = null;

		try {
			HorarioMedicoMapper hm = session.getMapper(HorarioMedicoMapper.class);
			HashMap<Object, Object> parameters = new HashMap<>();
			parameters.put("id", id);
			parameters.put("fechaTur", fechaTur);

			lista = hm.mostraHoras(parameters);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return lista;
	}
	
	public List<horasTurno> listHoras(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<horasTurno> lista = null;
		
		try {
			HorarioMedicoMapper hm = session.getMapper(HorarioMedicoMapper.class);

			lista = hm.listarHoras();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return lista;
		
	}
}
