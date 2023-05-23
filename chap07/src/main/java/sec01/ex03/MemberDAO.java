package sec01.ex03;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.catalina.realm.DataSourceRealm;

public class MemberDAO {
// 커넥션 풀 예제	
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory; 
	
	public MemberDAO(){
		try {
			Context context = new InitialContext(); // 이름 기반 검색
			dataFactory = (DataSource) context.lookup("java:comp/env/jdbc/mysql");
			
			System.out.println("성공");
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
	}
	
	
	
	public List<MemberVO> listmembers(){
		List<MemberVO> list = new ArrayList<>();
		try {
			// db에 연결되어 있다면
//			connDB();
			con = dataFactory.getConnection();
			String query = "select * from t_member";
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery(query);
			
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
			pstmt.close();
			con.close();
			
			
		} catch (Exception e) {
			// 에러메세지 출력
			e.printStackTrace();
		}
		
		return list;
	}
	
	public void addMember(MemberVO memberVO) {
		try {
			con = dataFactory.getConnection();
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			String name = memberVO.getName();
			String email = memberVO.getEmail();
			String query = "insert into t_member";
			query += "(id,pwd,name,email)";
			query += "values(?,?,?,?)";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.executeUpdate();
			pstmt.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
