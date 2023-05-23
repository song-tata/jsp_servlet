package sec03.ex02;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.xml.sax.DocumentHandler;

/**
 * Servlet implementation class MemberServlet
 */
@WebServlet("/member6")
public class Member3Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doHandle(req,resp);
	}

    @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	
		doHandle(req,resp);   		
	}
    
    private void doHandle(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	
    	req.setCharacterEncoding("utf-8");
    	resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		MemberDAO dao = new MemberDAO();
		List<MemberVO> list = dao.listmembers();
		
		String command = req.getParameter("command");
		
		if(command != null && command.equals("addMember")) {
			String _id = req.getParameter("id");
			String _pwd = req.getParameter("pwd");
			String _name = req.getParameter("name");
			String _email = req.getParameter("email");
			
			MemberVO vo = new MemberVO();
			vo.setId(_id);
			vo.setPwd(_pwd);
			vo.setName(_name);
			vo.setEmail(_email);
			dao.addMember(vo);
			
		}
		
		out.print("<html><body>");
		out.print("<table border = 1 ><tr>");
		out.print("<td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>가입일</td>");
		
		for(int i = 0; i<list.size();i++) {
			MemberVO memberVO = (MemberVO)list.get(i);
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			String name = memberVO.getName();
			String email = memberVO.getEmail();
			Date joinDate = memberVO.getJoinDate();
			out.print("<tr><td>"+id+"</td><td>"+pwd+"</td><td>"+name+"</td><td>"+email+"</td><td>"+joinDate+"</td>");
		}
		out.print("</table>");
		out.print("<a href='/chap07/member.html'>새 회원 등록</a></body></html>");

	}

	public Member3Servlet() {
        super();
    }

}
