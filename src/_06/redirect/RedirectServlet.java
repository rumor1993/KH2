package _06.redirect;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ch3/_6.redirect/RedirectServlet")
public class RedirectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RedirectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
/*
 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		String value = request.getParameter("food");
		request.setAttribute("food", value);
		response.sendRedirect("redirect.jsp");
		
		
		
	}


}
