package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/logins3")
public class LoginServlet3 extends HttpServlet {
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
		
		response.setContentType("text/html; charset=utf-8");
		//응답에 써내려갈 내용을 담는 객체 생성
		PrintWriter output = response.getWriter();
		
		
		// getParameter() 이용하여 태그의 name 속성값으로 전송된 value값을 받아 변수에 저장
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		String data = "<html>";
		data += "<body>";
		data += "아이디"+user_id;
		data += "비밀번호"+user_pw;
		data += "</body>";
		data += "</html>";
		
		output.print(data);
		
		if(user_id.equals("admin")&&user_pw.equals("admin")) {
			output.append("<br>관리자입니다.");
		}
		
	}

	
	
}
