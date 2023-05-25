package sec02.ex01;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO3 {
    private Connection con;
    private PreparedStatement pstmt;
    private DataSource dataFactory;

    public MemberDAO3() {
        try {
            Context context = new InitialContext();
            dataFactory = (DataSource) context.lookup("java:comp/env/jdbc/mysql");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<MemberVO> listMembers(MemberVO memberVO) {
        List<MemberVO> membersList = new ArrayList<MemberVO>();
        String _name = memberVO.getName();

        try {
            con = dataFactory.getConnection();
            String query = "SELECT * FROM t_member WHERE name LIKE ?"; // 수정: 테이블명을 t_member로 변경
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, "%" + _name + "%");
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
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

                membersList.add(vo);
            }

            rs.close();
            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return membersList;
    }
}
