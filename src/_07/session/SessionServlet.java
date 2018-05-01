package _07.session;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ch3/_7.session/SessionServlet")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SessionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
/*
 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		//request.getSession() : 세션 객체 생성하는 메소드입니다.
		HttpSession session = request.getSession();
		
		String value = request.getParameter("food");
		request.setAttribute("food", value);
		session.setAttribute("food", value);
		response.sendRedirect("redirect.jsp");
		
		
		
	}


}
