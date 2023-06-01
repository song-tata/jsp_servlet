package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ajax2")
public class AjaxTest2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	private void doHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String result = "";
		result = "<main><racoon>"+"<name>라쿤</name>"+
				"<text>라쿤은 한 번의 모험에서 미끄러지는 평면을 따라서 미끄러져 내려오고 있었다. 그때까지는 즐거움을 느끼며 경사로를 내려오고 있었지만, 갑자기 장애물이 나타나 그의 길을 막았다. 라쿤은 예상치 못한 이 장애물에 부딪히고 넘어지며, 몸이 아프고 화가 났다.\r\n"
				
				+ "하지만 그 이유는 단순한 고통과 부상뿐만 아니었다. 라쿤은 미끄러지는 평면을 내려오면서도 장애물을 피해갈 방법을 찾기 위해 미리 주변을 살피지 않았던 것이 화를 낳았다. 그의 부주의한 행동으로 인해 불필요한 상처를 입게 되었고, 그것에 분노를 느꼈다.</text>"+
				"<img>http://localhost:8090/chap16-1/images/angry.jpg</img>"
				+"</racoon></main>";
		System.out.println(result);
		PrintWriter out = response.getWriter();
		out.print(result);
	}
}
