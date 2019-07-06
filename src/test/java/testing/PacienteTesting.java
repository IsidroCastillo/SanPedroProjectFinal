/*
 package testing;


import org.apache.struts2.StrutsTestCase;
import org.junit.Test;

import com.opensymphony.xwork2.ActionProxy;
import com.pe.sanpedro.action.pacienteAction;

public class PacienteTesting extends StrutsTestCase {

	@Test
	public void test(){

		request.setParameter("nombreCompleto", "1212");
		request.setParameter("dni", "1212");
		request.setParameter("correo", "1212@hotmail.com");
		request.setParameter("direccion", "1212");
		request.setParameter("fechaNac", "2019/07/05");
		request.setParameter("celular", "1212");
		request.setParameter("clave", "1212");

		ActionProxy proxy = getActionProxy("/registrar.action");
		pacienteAction action = (pacienteAction) proxy.getAction();
		try {
			proxy.execute();
		} catch (Exception e) {
		}
		try {
			assertEquals(action.execute(), "success");
		} catch (Exception e) {
		}

	}
}
*/