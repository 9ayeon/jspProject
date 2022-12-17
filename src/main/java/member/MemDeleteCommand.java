package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemDeleteCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String mid = (String) session.getAttribute("sMid");
		
		MemberDAO dao = new MemberDAO();
		
		dao.setMemberDel(mid);
		
		//response.getWriter().write(res);
		
		/*
		 * if(res == 1) { //res가 정상처리라면 request.setAttribute("msg", "passwordOk");
		 * request.setAttribute("url", request.getContextPath()+"/memUpdatePwd.mem"); }
		 * else { request.setAttribute("msg", "passwordOkNo");
		 * request.setAttribute("url", request.getContextPath()+"/memUpdatePwd.mem"); }
		 */
	  request.setAttribute("msg", "memberDelOk"); 
	  request.setAttribute("url", request.getContextPath()+"/memLogout.mem");
	}
}
