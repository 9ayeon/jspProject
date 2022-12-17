package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import conn.SecurityUtil;

public class MemLoginOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그인작업 진행순서
		// 넘긴것부터 받기
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		String idCheck = request.getParameter("idCheck")==null ? "" : request.getParameter("idCheck");
		
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.getLoginCheck(mid);//자료가있으면 vo로넘긴다
		
		// 입력되어 넘어온 비밀번호를 암호화시킨 후 DB에 저장된 pwd와 비교한다.
		SecurityUtil security = new SecurityUtil();
		pwd = security.encryptSHA256(pwd); // 암호화해서 새로 pwd를 받았다. DB에 있는 pwd와 비교
		
		if(vo == null || !pwd.equals(vo.getPwd()) || vo.getUserDel().equals("OK")) { //넘어온 vo에 자료가 없으면, 비밀번호가 같지않으면. vo가 널이아니어도 비밀번호가 같지않으면. 또는 탈퇴유무가 OK인 경우는.
			request.setAttribute("msg", "loginNo");
			request.setAttribute("url", request.getContextPath()+"/memLogin.mem");
			return; // 회원아이디검색후, 회원아이디가 없으면 위에 2줄 처리, 리턴으로 돌아감. loginNo를 가져가서 메세지로가서 회원가입메세지띄우기
		}
		
		// 로그인 성공시에 처리할 부분(1.주요필드를 세션에 저장, 2.방문수와 방문포인트증가, 3.오늘방문횟수처리, 4.쿠키에 아이디저장유무)
		HttpSession session = request.getSession();
		// 1.주요필드를 세션에 저장
		session.setAttribute("sMid", mid);
		session.setAttribute("sName", vo.getName());
		session.setAttribute("sLevel", vo.getLevel());
		
		
		// 4. 쿠키
		Cookie cookieMid = new Cookie("cMid", mid);
		if(idCheck.equals("on")) {
			cookieMid.setMaxAge(60*60*24*7); // 쿠키 만료시간을 7일로 설정
		}
		else {
			cookieMid.setMaxAge(0);
		}
		response.addCookie(cookieMid);
		
		request.setAttribute("msg", "loginOk");
		request.setAttribute("url", request.getContextPath()+"/index.jsp");
		request.setAttribute("val", vo.getName());
	}

}
