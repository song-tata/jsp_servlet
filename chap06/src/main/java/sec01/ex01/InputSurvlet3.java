package sec01.ex01;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class inputSurvlet
 */
@WebServlet("/input3")
public class InputSurvlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
		System.out.println("이닛이닛");
	}

	public void destroy() {
		System.out.println("뿌셔뿌셔");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 한글로 인코딩
		//form 태그에서 전송된 데이터들의 name 속성을 저장
		//반복자 이기도 함 (cf)iterator와의 차이점 : 단방향 / 해시테이블과 같이 사용
		Enumeration enu = request.getParameterNames();
		while(enu.hasMoreElements()) {
			String name = (String)enu.nextElement();
			System.out.println(name);
			
			String[] values = request.getParameterValues(name);
			for(String i : values) {
				System.out.println(i);
			}
		}
	
		
		response.getWriter().append("Served at: ").append(request.getContextPath());

	}

	@Override
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
