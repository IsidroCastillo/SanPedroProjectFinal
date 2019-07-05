package com.pe.sanpedro.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.pe.sanpedro.model.HorarioMedico;
import com.pe.sanpedro.model.cita;
import com.pe.sanpedro.mybatis.MyBatisUtil;
import com.pe.sanpedro.mybatis.mapper.CitaMapper;
import com.pe.sanpedro.mybatis.mapper.HorarioMedicoMapper;


public class CitaService {

	public int registrarCita(Date fechaCita,int idMedico,int idPaciente,String motivo,String hora) {
		int registro = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			 CitaMapper um = session.getMapper(CitaMapper.class);
			 HashMap<Object, Object> parameters = new HashMap<>();
				parameters.put("fechaCita", fechaCita);
				parameters.put("idMedico", idMedico);
				parameters.put("idPaciente", idPaciente);
				parameters.put("motivo", motivo);
				parameters.put("hora", hora);
		
			 
			 registro= um.registrar(parameters);
			 session.commit();
		} catch (Exception e) {
			System.out.println("Error:" +e.getMessage());
			session.rollback();
		}
		return registro;
	}
	
	public List<cita> listarCitas(String usu, String pass) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<cita> lista = null;

		try {
			CitaMapper cm = session.getMapper(CitaMapper.class);
			HashMap<Object, Object> parameters = new HashMap<>();
			parameters.put("usu", usu);
			parameters.put("pass", pass);

			lista = cm.listaCitas(parameters);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return lista;
	}
	
	public List<cita> listarCitasPacientes(int id) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<cita> lista = null;

		try {
			CitaMapper cm = session.getMapper(CitaMapper.class);
			HashMap<Object, Object> parameters = new HashMap<>();
			parameters.put("id", id);
		

			lista = cm.listaCitasPacientes(parameters);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return lista;
	}
	
	
}
