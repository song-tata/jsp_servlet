package sec03.ex01;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;



// 커넥션 풀 예제
public class MemberDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

	public MemberDAO() {
		try {
			Context context = new InitialContext(); // 이름기반 검색
			dataFactory = (DataSource) context.lookup("java:comp/env/jdbc/mysql");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<MemberVO> listMembers() {
		List<MemberVO> list = new ArrayList<MemberVO>();
		try {
			// connDB();
			con = dataFactory.getConnection();
			String query = "select * from customer ";
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery(query);
			while (rs.next()) {
				Integer custid = rs.getInt("custid");
				String name = rs.getString("name");
				String address = rs.getString("address");
				String phone = rs.getString("phone");
				String idnumber = rs.getString("idnumber");

				MemberVO vo = new MemberVO();
				vo.setCustid(custid);
				vo.setName(name);;
				vo.setAddress(address);
				vo.setPhone(phone);
				vo.setIdnumber(idnumber);
				list.add(vo);
			}
			// JDBC 연결 과정에서 필요했던 객체들을 CLOSE
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public void addMember(MemberVO memberVO) {
		try {
			con = dataFactory.getConnection();
			Integer custid = memberVO.getCustid();
			String name = memberVO.getName();
			String address = memberVO.getAddress();
			String phone = memberVO.getPhone();
			String idnumber = memberVO.getIdnumber();
			
			String query = "insert into customer";
			query += "(custid,name,address,phone,numid)";
			query += "values(?,?,?,?,?)";
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, custid);
			pstmt.setString(2, name);
			pstmt.setString(3, address);
			pstmt.setString(4, phone);
			pstmt.setString(5, idnumber);
			pstmt.executeUpdate();
			pstmt.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void delMember(int id) {
        try {
            con = dataFactory.getConnection();
            String query = "delete from customer where custid=?";
            pstmt = con.prepareStatement(query);
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
            pstmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
