package sec02.ex01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	
	public MemberDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) ctx.lookup("java:/comp/env/jdbc/mysql");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	
	// 아이디 중복 체크
	
	public boolean idCheck(String id) {
		boolean result = false;
		
		// DB연동 : my_db > t_member
		try {
			con = dataFactory.getConnection();
			String query = "select decode(count(*),1,'true','false') as result from t_member";
			query +="where id=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			result = Boolean.parseBoolean(rs.getString(0));
			
			rs.close();
			pstmt.close();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
