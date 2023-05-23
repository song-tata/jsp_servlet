package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public loginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String uid = request.getParameter("u_id");
		String upw = request.getParameter("u_pw");
		// 히든 속성으로 전송된 값을 가지고 옴.
		String uadd = request.getParameter("u_add");
		String ugen = request.getParameter("u_gen");
		String data ="id : "+uid;
		data += "<br>";
		data += "password : "+upw;
		data += "<br>";
		data += "address : "+uadd;
		data += "<br>";
		data += "gender : "+ugen;
		out.print(data);
		
	}

}
