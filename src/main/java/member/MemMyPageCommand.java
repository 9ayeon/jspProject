package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemMyPageCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String mid = (String) session.getAttribute("sMid");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getLoginCheck(mid);
		
		// 레벨을 문자로 처리해서 넘겨준다.
		String strLevel = "";
		if(vo.getLevel() == 1) strLevel = "관리자";
		else if(vo.getLevel() == 2) strLevel = "특별회원";
		else if(vo.getLevel() == 3) strLevel = "일반회원";
		
		
		request.setAttribute("strLevel", strLevel);
		request.setAttribute("name", vo.getName());
		request.setAttribute("mid", vo.getMid());
		request.setAttribute("idx", vo.getIdx());
		request.setAttribute("gender", vo.getGender());
		request.setAttribute("email", vo.getEmail());
		//request.setAttribute("birthday", vo.getBirthday());
		request.setAttribute("birthday", vo.getBirthday().substring(0, 10));
		request.setAttribute("tel", vo.getTel());
		request.setAttribute("address", vo.getAddress());
		request.setAttribute("job", vo.getJob());
		
		
		
		// 사용자가 방명록에서 글쓴 회수 가져오기
		//int guestCnt = dao.getGuestWrite(mid, vo.getName());
		//request.setAttribute("guestCnt", guestCnt);
	}

}
