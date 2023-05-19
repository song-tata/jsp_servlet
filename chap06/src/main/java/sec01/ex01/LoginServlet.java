package sec01.ex01;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/logins")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; // 자바에서 서블릿을 순서대로 나열하기 위해서 사용하는 코드

	public void init(ServletConfig config) throws ServletException {
		System.out.println("이닛이닛");
	}

	public void destroy() {
		System.out.println("뿌셔뿌셔");
	}
	// HttpServletRequest request : 웹 브라우저에서 전송한 정보를 톰캣에게 넘겨주는 역할

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// getParameter() 이용하여 태그의 name 속성값으로 전송된 value값을 받아 변수에 저장
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		System.out.println("아이디 : "+user_id +" 비밀번 : "+ user_pw);
	}

}
