package com.pe.sanpedro.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.pe.sanpedro.mybatis.MyBatisUtil;
import com.pe.sanpedro.mybatis.mapper.PacienteMapper;


public class pacienteService {
	
	public int registrarPaciente(String usuario,String clave,String estado,int idTipo,String nombreCompleto,String dni,String correo,String direccion,String fechaNac,String celular,String est) {
		int registro = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			 PacienteMapper um = session.getMapper(PacienteMapper.class);
			 HashMap<Object, Object> parameters = new HashMap<>();
				parameters.put("usuario", usuario);
				parameters.put("clave", clave);
				parameters.put("estado", estado);
				parameters.put("idTipo", idTipo);
				parameters.put("nombreCompleto", nombreCompleto);
				parameters.put("dni", dni);
				parameters.put("correo", correo);
				parameters.put("direccion", direccion);
				parameters.put("fechaNac", fechaNac);
				parameters.put("celular", celular);
				parameters.put("est", est);
			 
			 registro= um.registrar(parameters);
			 session.commit();
		} catch (Exception e) {
			System.out.println("Error:" +e.getMessage());
			session.rollback();
		}
		return registro;
	}
	

	
}
