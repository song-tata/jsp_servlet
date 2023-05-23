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
import javax.xml.stream.events.Comment;

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
			String custidstring = req.getParameter("custid");
			int _custid = Integer.parseInt(custidstring);
			String _idnumber = req.getParameter("idnumber");
			String _name = req.getParameter("name");
			String _address = req.getParameter("address");
			String _phone = req.getParameter("phone");
			
			MemberVO vo = new MemberVO();
			vo.setCustid(_custid);
			vo.setIdnumber(_idnumber);
			vo.setName(_name);
			vo.setAddress(_address);
			vo.setPhone(_phone);
			dao.addMember(vo);
			
		}else if(command != null && command.equals("delMember")) {
			String custidstring = req.getParameter("custid");
			int _custid = Integer.parseInt(custidstring);
			dao.delMember(_custid);
		}
		
		out.print("<html><body>");
		out.print("<table border = 1 ><tr>");
		out.print("<td>아이디</td><td>주민번호</td><td>이름</td><td>주소</td><td>번호</td>");
		
		for(int i = 0; i<list.size();i++) {
			MemberVO memberVO = (MemberVO)list.get(i);
			Integer custid = memberVO.getCustid();
			String idnumber = memberVO.getIdnumber();
			String name = memberVO.getName();
			String address = memberVO.getAddress();
			String phone = memberVO.getPhone();
			out.print("<tr><td>"+custid+"</td><td>"+idnumber+"</td><td>"+name+"</td><td>"+address+"</td><td>"+phone+"</td>");
			out.print("<td>" + "<a href='/chap07/member6?command=delMember&custid=" + custid + "'>삭제</a></td></tr>");
		}
		
		out.print("</table>");
		out.print("<script type = 'text/javascript'>");
		out.print("location.href='member6'");
		out.print("</script>");
		out.print("<a href='/chap07/member.html'>새 회원 등록</a></body></html>");
//		for (int i = 0; i < list.size(); i++) {
//            MemberVO memberVO = (MemberVO) list.get(i);
//            Integer custid = memberVO.getCustid();
//            String name = memberVO.getName();
//            String address = memberVO.getAddress();
//            String phone = memberVO.getPhone();
//            String numid = memberVO.getIdnumber();
//            out.print("<tr><td>" + custid + "</td><td>" + name + "</td><td>" + address + "</td><td>" + phone
//                    + "</td><td>" + numid + "</td><td>" + "<a href='/chap07/member6?command=delMember&custid=" + custid
//                    + "'>삭제 </a></td></tr>");
//        }
//        out.print("</table>");
//        out.print("<a href='/chap07/member.html'>새 회원 등록 </a></body></html>");
	}

	public Member3Servlet() {
        super();
    }

}
