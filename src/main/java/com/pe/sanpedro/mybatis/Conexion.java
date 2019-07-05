package com.pe.sanpedro.mybatis;

import java.sql.*;

public class Conexion {

	public static Connection getConexion(){
		Connection cn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinica",
					"root", "mysql");
			if(cn != null){
			
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cn;
	}
}
