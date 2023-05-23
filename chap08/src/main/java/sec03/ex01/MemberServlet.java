package sec03.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member9")
public class MemberServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doHandle(req, resp);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		MemberDAO dao = new MemberDAO();
		List memberlist = dao.listMembers();
		
		
		
		// 조회된 회원 정보를 ArrayList객체에 저장 후 request 바인딩
		request.setAttribute("memberlist", memberlist);
		//바인딩한 리퀘스트를 view 서블릿으로 포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher("view");
		dispatcher.forward(request, response);
		
		
	}

}