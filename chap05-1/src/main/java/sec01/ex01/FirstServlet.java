package sec01.ex01;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstServlet extends HttpServlet {
	// 서블릿의 생명주기 : init(), doxxx(), destroy()
	@Override
	public void init() throws ServletException {
		System.out.println("init 메서드 호출");
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doget 메서드 호출");
	}

	@Override
	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}

	
}
