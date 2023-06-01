package waytous.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	DataSource dataFactory;
	ResultSet rs = null;
	
	public BoardDAO() {
		try {
			Context ctx = new InitialContext();
			dataFactory = (DataSource) ctx.lookup("java:/comp/env/jdbc/mysql");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean user_numCheck(int user_num) throws SQLException {
		boolean result = false;
		try {
			con = dataFactory.getConnection();
			String query = "SELECT count(*) FROM board WHERE user_num=?";
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();
			System.out.println("여기 작동함?numcheck");
			if(rs.next()) {
				result = true;
			}else {
				result = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null) {
				rs.close();
			}
			if(con!=null) {
				con.close();
			}
			if(pstmt!=null) {
				pstmt.close();
			}
		}
		System.out.println("여기 작동함?numcheck"+result);
		return result;
	}
	
	public List<BoardBean> boardSet(int user_num) throws SQLException {
		List<BoardBean> list = new ArrayList<>();
		try {
			con = dataFactory.getConnection();
			String query = "SELECT arti_num,arti_title,auther,arti_date FROM board WHERE user_num=?";
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, user_num);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Integer arti_num = rs.getInt("arti_num");
				String arti_title = rs.getString("arti_title");
				String auther = rs.getString("auther");
				Timestamp arti_date = rs.getTimestamp("arti_date");
				
				BoardBean bean = new BoardBean(arti_num, arti_title, auther, arti_date);
				list.add(bean);
			
			}
		}catch (Exception e){
			e.printStackTrace();
		} finally {
			if(rs!=null) {
				rs.close();
			}
			if(con!=null) {
				con.close();
			}
			if(pstmt!=null) {
				pstmt.close();
			}
		}
		System.out.println("여기 작동함?list"+list);
		return list;
	}
	
	
}
