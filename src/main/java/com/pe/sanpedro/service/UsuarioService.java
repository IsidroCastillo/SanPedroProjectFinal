package com.pe.sanpedro.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.pe.sanpedro.model.Usuario;
import com.pe.sanpedro.mybatis.MyBatisUtil;
import com.pe.sanpedro.mybatis.mapper.UsuarioMapper;

public class UsuarioService {
	
	public Usuario login(String username, String password) {
		Usuario user = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			UsuarioMapper mapper = session.getMapper(UsuarioMapper.class);
			HashMap<Object, Object> parameters = new HashMap<>();
			parameters.put("user", username);
			parameters.put("pwd", password);
			user = mapper.login(parameters);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return user;
	}
	
	public Usuario loginMedico(String username, String password) {
		Usuario user = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			UsuarioMapper mapper = session.getMapper(UsuarioMapper.class);
			HashMap<Object, Object> parameters = new HashMap<>();
			parameters.put("user", username);
			parameters.put("pwd", password);
			user = mapper.loginMedico(parameters);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return user;
	}
}
