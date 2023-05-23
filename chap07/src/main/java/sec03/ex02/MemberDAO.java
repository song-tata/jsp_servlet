package sec03.ex02;

import java.security.PublicKey;
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
			String query = "select * from customer";
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery(query);
			
			while(rs.next()) {
				Integer custid = rs.getInt("custid");
				String idnumber = rs.getString("idnumber");
				String name = rs.getString("name");
				String address = rs.getString("address");
				String phone = rs.getString("phone");
				
				MemberVO vo = new MemberVO();
				vo.setCustid(custid);;
				vo.setIdnumber(idnumber);
				vo.setName(name);
				vo.setAddress(address);
				vo.setPhone(phone);
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
			String query = "insert into customer";
			
			
			Integer custid = memberVO.getCustid();
			String idnumber = memberVO.getIdnumber();
			String name = memberVO.getName();
			String address = memberVO.getAddress();
			String phone = memberVO.getPhone();
			
			query += "(custid,idnumber,name,address,phone)";
			query += "values(?,?,?,?,?)";
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, custid);
			pstmt.setString(2, idnumber);
			pstmt.setString(3, name);
			pstmt.setString(4, address);
			pstmt.setString(5, phone);
			pstmt.executeUpdate();
			pstmt.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		
	}
//	public void delMember(int custid) {
//		try {
//			con = dataFactory.getConnection();
//			String query = "delete from customer where custid = ?";
//			pstmt = con.prepareStatement(query);
//			pstmt.setInt(1, custid);
//			pstmt.executeUpdate();
//			pstmt.close();
//		} catch (Exception e) {
//			e.getStackTrace();
//		}
//	}
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
