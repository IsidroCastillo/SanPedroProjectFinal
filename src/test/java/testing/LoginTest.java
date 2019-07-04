package testing;

import org.apache.struts2.StrutsTestCase;
import org.junit.Test;

import com.opensymphony.xwork2.ActionProxy;
import com.pe.sanpedro.action.LoginAction;

public class LoginTest extends StrutsTestCase{

	@Test
	public void test2() throws Exception {
		request.addParameter("user", "admin");
		request.addParameter("pwd", "123abc");
		ActionProxy proxy = getActionProxy("/login.action");
		LoginAction loginAction = (LoginAction) proxy.getAction(); 
		proxy.execute();
		assertEquals(loginAction.execute(), "success");
	}
	
	@Test
	public void test3() throws Exception {
		request.addParameter("user", "admi");
		request.addParameter("pwd", "123a");
		ActionProxy proxy = getActionProxy("/login.action");
		LoginAction loginAction = (LoginAction) proxy.getAction(); 
		proxy.execute();
		assertEquals(loginAction.execute(), "error");
	}


}
