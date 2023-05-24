package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class logintest
 */
@WebServlet("/login")
public class logintest extends HttpServlet {
	ServletContext context = null;
	List user_list = new ArrayList();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		context = getServletContext();
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");

		loginImpl loginUser = new loginImpl(u_id, u_pw);

		if (session.isNew()) {
			session.setAttribute("loginUser", loginUser);
			user_list.add(u_id);
			context.setAttribute("user_list", user_list);
		}

		out.print("<html><body>");
		out.print("아이디:(리스너사용) " + loginUser.u_id + "<br>");
		out.print("아이디: " + u_id + "<br>");
		out.print("총 접속자 수 : " + loginUser.total_user + "<br>");
		out.print("접속 id : <br>");
		List list = (ArrayList) context.getAttribute("user_list");
		for (int i = 0; i < list.size(); i++) {
			out.print(list.get(i) + "<br>");
		}

		out.print("<a href = 'logout?u_id=" + u_id + "'>로그아웃</a>");
		out.print("</body></html>");
	}
	
}
