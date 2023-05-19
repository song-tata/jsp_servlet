package sec01.ex01;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class inputSurvlet
 */
@WebServlet("/input")
public class InputSurvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
		System.out.println("이닛이닛");
	}

	public void destroy() {
		System.out.println("뿌셔뿌셔");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		System.out.println("아이디 : "+user_id +" 비밀번 : "+ user_pw);
		
		String[] subject1 = request.getParameterValues("subject");
		for(String i : subject1) {
			System.out.println("과목: "+i);
		response.getWriter().append("Served at: ").append(request.getContextPath());

		}
	}

}
