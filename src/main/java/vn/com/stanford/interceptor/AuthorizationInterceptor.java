package vn.com.stanford.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class AuthorizationInterceptor implements Interceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public AuthorizationInterceptor() {
		// TODO Auto-generated constructor stub
	}
	
	
	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void init() {
		// TODO Auto-generated method stub

	}

	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		
		Map<String, Object> session = arg0.getInvocationContext().getSession();
		HttpServletResponse response = ServletActionContext.getResponse();
		if (session.get("userOnline") != null) {
			
		}else {
			response.sendRedirect("dangNhap.action");
		}

		return arg0.invoke();
	}

}
