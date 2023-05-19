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
 * Servlet implementation class gugudan
 */
@WebServlet("/gugu")
public class gugudanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
		System.out.println("이닛이닛");

	}

	public void destroy() {
		System.out.println("뿌뿌");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		String dan = request.getParameter("dantext");
		
		int dan1 = Integer.parseInt(dan);
		PrintWriter output = response.getWriter();
		output.append("<html><body><table border = \"2\"><tr><td>"+dan+"단</td></tr>");	
		
		for (int i = 1; i < 10; i++) {
			
			output.append("<tr><td>"+dan + "*" + i + "</td>");
			output.append("<td>"+dan1*i + "</td></tr>");
			
		}
		
		output.append("</table></body></html>");
		
	}

}
