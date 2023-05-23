package sec03.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/view")
public class viewServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doHandle(req, resp);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		List memberslist = (List) request.getAttribute("memberlist");

		

		out.print("<html><body>");
		out.print("<table  border=1><tr align='center' bgcolor='lightgreen'>");
		out.print("<td>아이디</td><td>이름</td><td>주소</td><td>전화번호</td><td>주민번호</td><td>삭제</td></tr>");

		for (int i = 0; i < memberslist.size(); i++) {
			MemberVO memberVO = (MemberVO) memberslist.get(i);
			Integer custid = memberVO.getCustid();
			String name = memberVO.getName();
			String address = memberVO.getAddress();
			String phone = memberVO.getPhone();
			String numid = memberVO.getIdnumber();

			out.print("<tr><td>" + custid + "</td><td>" + name + "</td><td>" + address + "</td><td>" + phone
					+ "</td><td>" + numid + "</td><td>"
						+"<a href='chap08/member9?command=delMember&custid="+ custid+"'>삭제</a></td>"	
					+ "</tr>");
		}
		out.print("</table>");
		out.print("<a href='/chap08/member.html'>새 회원 등록 </a></body></html>");
	}

}