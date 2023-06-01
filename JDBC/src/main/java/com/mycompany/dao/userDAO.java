package com.mycompany.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

import org.apache.tomcat.dbcp.dbcp2.PStmtKey;

import com.mycompany.dbcon.ConnectionPool;

public class userDAO {
	// 로그인 메서드
	public int login(String u_id, String u_pw) throws SQLException, NamingException {
		int i = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = ConnectionPool.get();
			String query = "SELECT id,password FROM user WHERE id=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, u_id);
			rs = pstmt.executeQuery();
			if (!rs.next())
				return 1;
			if (!u_pw.equals(rs.getString("password")))
				return 2;
			return 0;
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}

	}

}
