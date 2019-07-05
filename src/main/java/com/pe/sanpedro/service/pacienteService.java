package com.pe.sanpedro.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.pe.sanpedro.model.Usuario;
import com.pe.sanpedro.model.paciente;
import com.pe.sanpedro.mybatis.Conexion;
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
	
	public int actualizarPaciente(String correo,String direccion,String celular,int idPaciente) {
		int actualizar = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			 PacienteMapper pm = session.getMapper(PacienteMapper.class);
			 HashMap<Object, Object> parameters = new HashMap<>();
				parameters.put("correo", correo);
				parameters.put("direccion", direccion);
				parameters.put("celular", celular);
				parameters.put("idPaciente", idPaciente);
				actualizar = pm.actualizar(parameters); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return actualizar;
	}
	
public boolean actualizarEmpleado(paciente pac){
		
		Connection cn = null;
		CallableStatement cs = null;
		boolean actualizar = false;
				
		try{
			
			
			String query = "call sp_actualizarPaciente(?,?,?,?)";
			cn = Conexion.getConexion();
			cs = cn.prepareCall(query);
			cs.setString(1, pac.getCorreo());
			cs.setString(2, pac.getDireccion());
			cs.setString(3, pac.getCelular());
			cs.setInt(4, pac.getIdPaciente());
		
			
			
			cs.executeUpdate();
			
			actualizar = true;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			actualizar = false;
		}
		return actualizar;		
	}
	
public boolean actualizarContra(Usuario usu){
	
	Connection cn = null;
	CallableStatement cs = null;
	boolean actualizar = false;
			
	try{
		
		String query = "call sp_actualizarContra(?,?,?)";
		cn = Conexion.getConexion();
		cs = cn.prepareCall(query);
		cs.setString(1, usu.getPassword());
		cs.setString(2, usu.getNuevaContra());
		cs.setInt(3, usu.getIdUsuario());
	
		
		
		cs.executeUpdate();
		
		actualizar = true;
		
	} catch (SQLException e) {
		
		e.printStackTrace();
		actualizar = false;
	}
	return actualizar;		
}
	

	
}
