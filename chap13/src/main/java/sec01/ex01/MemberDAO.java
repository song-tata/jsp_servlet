package sec01.ex01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	
public MemberDAO() {
	try {
		Context cnt = new InitialContext();
		dataFactory = (DataSource) cnt.lookup("java:env/jdbc/mysql");
	} catch (Exception e) {
		e.printStackTrace();
	}
}
	public List mblist() {
		List list = new ArrayList<>();
		try {
			con = dataFactory.getConnection();
			String query = "select * from member";
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Integer num_id = rs.getInt("num_id");
				String name = rs.getString("name");
				String pwd = rs.getString("pwd");
				Timestamp joinDate = rs.getTimestamp("joinDate");
				
				MemberBean mb = new MemberBean();
				mb.setNum_id(num_id);
				mb.setName(name);
				mb.setPwd(pwd);
				mb.setJoinDate(joinDate);
				list.add(mb);
			}
			rs.close();
			pstmt.close();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void addMember(MemberBean bean) {
		try {
			con = dataFactory.getConnection();
			String query = "INSERT INTO member";
			
			Integer num_id = bean.getNum_id();
			String name = bean.getName();
			String pwd = bean.getPwd();
			Timestamp joinDate = bean.getJoinDate();
			
			query += "(num_id,name,pwd,joinDate)";
			query += "values(?,?,?,?)";
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, num_id);
			pstmt.setString(2, name);
			pstmt.setString(3, pwd);
			pstmt.setTimestamp(4, joinDate);
			pstmt.executeUpdate();
			pstmt.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
