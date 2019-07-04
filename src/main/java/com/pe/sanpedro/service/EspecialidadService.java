package com.pe.sanpedro.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.pe.sanpedro.model.Especialidad;
import com.pe.sanpedro.mybatis.MyBatisUtil;
import com.pe.sanpedro.mybatis.mapper.EspecialidadMapper;

public class EspecialidadService implements EspecialidadMapper {

	@Override
	public List<Especialidad> listaEspecialidades() throws Exception {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Especialidad> lstEspecialidad = null;
		try {
			EspecialidadMapper mapper = session.getMapper(EspecialidadMapper.class);
			lstEspecialidad = mapper.listaEspecialidades();
			System.out.println("es: "+lstEspecialidad);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lstEspecialidad;
	}
	
}
