package waytous.join;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

	public UserDAO() {
		try {
			Context ctx = new InitialContext();
			dataFactory = (DataSource) ctx.lookup("java:/comp/env/jdbc/mysql");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void AddAccount(JoinBean vo) {
		try {
			con = dataFactory.getConnection();
			String query = "INSERT INTO user (u_id, u_pwd, u_email)";

			String u_id = vo.getU_id();
			String u_pwd = vo.getU_pwd();
			String u_email = vo.getU_email();

			query += "values(?,?,?)";

			pstmt = con.prepareStatement(query);
			pstmt.setString(1, u_id);
			pstmt.setString(2, u_pwd);
			pstmt.setString(3, u_email);
			pstmt.executeUpdate();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public boolean idCheck(String u_id) {
		boolean result = false;
		try {
			con = dataFactory.getConnection();
			String query = "SELECT CASE COUNT(*) WHEN 1 THEN 'false' ELSE 'true' END AS result FROM user ";
			query += "WHERE u_id=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, u_id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			result = Boolean.parseBoolean(rs.getString("result"));

			rs.close();
			pstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public int loginCheck(String u_pwd, String u_id) {

		try {
			con = dataFactory.getConnection();
			String query = "SELECT u_id,u_pwd FROM user WHERE u_id=?";

			pstmt = con.prepareStatement(query);
			pstmt.setString(1, u_id);

			ResultSet rs = pstmt.executeQuery();
			if (!rs.next()) {
				rs.close();
				pstmt.close();
				con.close();
				return 1;
			}
			if (!u_pwd.equals(rs.getString("u_pwd"))) {
				rs.close();
				pstmt.close();
				con.close();
				return 2;
			}
			rs.close();
			pstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}
	public int searchUser_num(String u_id) {
		int result = 0;
		try {
			con = dataFactory.getConnection();
			String query = "SELECT user_num FROM user WHERE u_id=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, u_id);
			ResultSet rs = pstmt.executeQuery();
			
			if(!rs.next()) {
				rs.close();
				pstmt.close();
				con.close();
				return 0;
			}else {
				result = Integer.parseInt(rs.getString("user_num"));
				rs.close();
				pstmt.close();
				con.close();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("여기 작동함?searh"+result);
		
		return result;
	}
}
