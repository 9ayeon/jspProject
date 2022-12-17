package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conn.SecurityUtil;

public class MemJoinOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("hMid")==null ? "" : request.getParameter("hMid");
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		String gender = request.getParameter("gender")==null ? "" : request.getParameter("gender");
		String email = request.getParameter("email")==null ? "" : request.getParameter("email");
		String birthday = request.getParameter("birthday")==null ? "" : request.getParameter("birthday");
		String tel = request.getParameter("tel")==null ? "" : request.getParameter("tel");
		String address = request.getParameter("address")==null ? "" : request.getParameter("address");
		String job = request.getParameter("job")==null ? "" : request.getParameter("job");
		
		// DB에 저장시, 테이블설계에서 지정한 각 필드의 길이체크
		System.out.println("mid. : " + mid + ", name : " + name);
		
		// 아이디와 닉네임을 다시한번 중복체크 해준다. (넘어온 값들을 체크하는거 - DB안에서)
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getLoginCheck(mid);
		if(vo != null) { // 널이아니면(쓰고있다는뜻)
			request.setAttribute("msg", "idCheckNo");
			request.setAttribute("url", request.getContextPath()+"/memJoin.mem");
			return; // 끝낸다.
		}
		//System.out.println("통과..");
		// 비밀번호 암호화처리(sha256)
		SecurityUtil security = new SecurityUtil();
		pwd = security.encryptSHA256(pwd); // 암호화된 패스워드를 변수에 담기
		
		// 모든 체크가 완료되었다면 회원정보를 vo에 담아서 DB(DAO객체)로 넘겨준다.
		vo = new MemberVO();
		//System.out.println("vo : " + vo);
		vo.setMid(mid);
		vo.setName(name);
		vo.setPwd(pwd);
		vo.setGender(gender);
		vo.setEmail(email);
		vo.setBirthday(birthday);
		vo.setTel(tel);
		vo.setAddress(address);
		vo.setJob(job);
		
		int res = dao.setMemberJoinOk(vo);
		
		if(res == 1) {
			request.setAttribute("msg", "memJoinOk");
			request.setAttribute("url", request.getContextPath()+"/memLogin.mem");
		}
		else {
			request.setAttribute("msg", "memJoinNo");
			request.setAttribute("url", request.getContextPath()+"/memJoin.mem");
		}
	}

}
