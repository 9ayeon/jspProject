package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.GetConn;

public class MemberDAO {
//싱글톤을 이용한 DB연결 객체 연결하기...
	GetConn getConn = GetConn.getInstance();
	
	private Connection conn = getConn.getConn();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	MemberVO vo = null;

	//아이디체크(조건을 만족하면 모든 자료를 vo에 담아서 넘겨준다.)
	public MemberVO getLoginCheck(String mid) {
		vo = new MemberVO();
		try {
			sql = "select * from member where mid = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setName(rs.getString("name"));
				vo.setPwd(rs.getString("pwd"));
				vo.setGender(rs.getString("gender"));
				vo.setEmail(rs.getString("email"));
				vo.setBirthday(rs.getString("birthday"));
				vo.setTel(rs.getString("tel"));
				vo.setAddress(rs.getString("address"));
				vo.setJob(rs.getString("job"));
				vo.setUserDel(rs.getString("userDel"));
				vo.setLevel(rs.getInt("level"));
			}
			else {
				vo = null;
			}
		} catch (SQLException e) {
			System.out.println("SQL 오류1 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		return vo;
	}

	//신규회원 가입처리
	public int setMemberJoinOk(MemberVO vo) {
		int res = 0;
		try {
			sql = "insert into member values (default,?,?,?,?,?,?,?,?,?,default,default)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getPwd());
			pstmt.setString(4, vo.getGender());
			pstmt.setString(5, vo.getEmail());
			pstmt.setString(6, vo.getBirthday());
			pstmt.setString(7, vo.getTel());
			pstmt.setString(8, vo.getAddress());
			pstmt.setString(9, vo.getJob());
			pstmt.executeUpdate();
			res = 1;
		} catch (SQLException e) {
			System.out.println("SQL 오류2: " + e.getMessage());
		} finally {
			getConn.pstmtClose();
		}
		
		return res;
	}

	//회원 탈퇴처리(userDel필드의 값을 'OK'로 변경처리한다.
	public void setMemberDel(String mid) {
		try {
			sql = "update member set userDel = 'OK' where mid = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 오류3 : " + e.getMessage());
		} finally {
			getConn.pstmtClose();
		}
	}

	// 회원 정보 수정
	public int setMemberUpdateOk(MemberVO vo) {
		int submitFlag = 0;
		try {
			sql = "update member set name=?, gender=?, email=?,"
					+ "birthday=?, tel=?, address=?, job=? where mid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getGender());
			pstmt.setString(3, vo.getEmail());
			pstmt.setString(4, vo.getBirthday());
			pstmt.setString(5, vo.getTel());
			pstmt.setString(6, vo.getAddress());
			pstmt.setString(7, vo.getJob());
			pstmt.setString(8, vo.getMid());
			pstmt.executeUpdate();
			submitFlag = 1;
		} catch (SQLException e) {
			System.out.println("SQL 오류4 : " + e.getMessage());
		} finally {
			getConn.pstmtClose();
		}
		
		return submitFlag;
	}

	// 비밀번호 수정처리
	public int setMemUpdatePwdOk(String mid, String newPwd) {
		int res = 0;
		try {
			sql = "update member set pwd = ? where mid = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, newPwd);
			pstmt.setString(2, mid);
			pstmt.executeUpdate();
			res = 1;
		} catch (SQLException e) {
			System.out.println("SQL 에러7 : " + e.getMessage());
		} finally {
			getConn.pstmtClose();
		}
		return res;
	}
		
		
	
}
