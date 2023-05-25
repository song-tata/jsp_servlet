package sec02.ex01;

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

public class memberDAO {
	// 커넥션 풀 예제
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

	public memberDAO() {
		try {
			Context context = new InitialContext(); // 이름 기반 검색
			dataFactory = (DataSource) context.lookup("java:comp/env/jdbc/mysql");
			System.out.println("성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public List<memverVO> listmembers(memverVO memvo) {
		List<memverVO> list = new ArrayList<>();
		String _name = memvo.getName();
	    try {
	        con = dataFactory.getConnection();
	        String query = "select * from t_member";

	        if (_name != null && !_name.isEmpty()) {
	            System.out.println("Statement: " + query);
	            query += " where name=?";
	            pstmt = con.prepareStatement(query);
	            pstmt.setString(1, _name);
	        } else {
	            System.out.println("Statement: " + query);
	            pstmt = con.prepareStatement(query);
	        }

	        ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");

				memverVO vo = new memverVO();
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
}
