package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemUpdateOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("sMid");
		
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		String gender = request.getParameter("gender")==null ? "" : request.getParameter("gender");
		String email = request.getParameter("email")==null ? "" : request.getParameter("email");
		String birthday = request.getParameter("birthday")==null ? "" : request.getParameter("birthday");
		String tel = request.getParameter("tel")==null ? "" : request.getParameter("tel");
		String address = request.getParameter("address")==null ? "" : request.getParameter("address");
		String job = request.getParameter("job")==null ? "" : request.getParameter("job");
		
		
		MemberDAO dao = new MemberDAO();
		
		// 모든 체크가 완료되었다면 회원정보를 vo에 담아서 DB(DAO객체)로 넘겨준다.
		MemberVO vo = new MemberVO();
		vo.setMid(mid);
		vo.setName(name);
		vo.setGender(gender);
		vo.setEmail(email);
		vo.setBirthday(birthday);
		vo.setTel(tel);
		vo.setAddress(address);
		vo.setJob(job);
		
		int submitFlag = dao.setMemberUpdateOk(vo);
		//function showPopup() { window.open("${ctp}/memMyPage.mem", "mypage", "width=550, height=800, left=650, top=100"); }
		
		if(submitFlag == 1) {
			request.setAttribute("msg", "memUpdateOk");
			request.setAttribute("url", request.getContextPath()+"/memUpdate.mem");
		}
		else {
			request.setAttribute("msg", "memUpdateNo");
			request.setAttribute("url", request.getContextPath()+"/memUpdate.mem");
		}
	}

}
