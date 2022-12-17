package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemLogoutCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String name = (String) session.getAttribute("sName");
		
		session.invalidate();
		
		request.setAttribute("msg", "memLogoutOk");
		request.setAttribute("url", request.getContextPath()+"/index.jsp");
		request.setAttribute("val", name);
	}

}
