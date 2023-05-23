package sec01.ex02;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	
	private Connection con;
	private Statement stmt;
	
	public List<MemberVO> listmembers(){
		List<MemberVO> list = new ArrayList<>();
		try {
			// db에 연결되어 있다면
			connDB();
			String query = "select * from t_member";
			
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				
				MemberVO vo = new MemberVO();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate);
				list.add(vo);
				
				
			}
			// db 연결과정에서 필요했던 객체들을 닫아줘야함.
			rs.close();
			stmt.close();
			con.close();
			
			
		} catch (Exception e) {
			// 에러메세지 출력
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	private void connDB(){
		try {
			Context context = new InitialContext(); // 이름 기반 검색
			DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/mysql");
			//jdbc/mysql pool을 검색
			con = ds.getConnection();// data pool 안에 있는 connection 객체 생성
			
			// 3. 쿼리 수행을 위한 스테이트먼트 객체 생성
			stmt = con.createStatement();
			
			System.out.println("성공");
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
	}
}
