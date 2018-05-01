package _09.context;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ch3/_9.context/context")
public class context extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public context() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) 
					throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//post방식 요청 한글 처리
		request.setCharacterEncoding("euc-kr");
				
		//응답의 컨텐츠 형식 : 캐릭터 셋 설정
		response.setContentType("text/html;charset=euc-kr");
		
		String value = request.getParameter("food");
		request.setAttribute("food", value);
		
		HttpSession session = request.getSession();
		session.setAttribute("food", value);
		
		//현재 페이지가 소속된 웹 애플리케이션의 ServletContext 객체를 구해옵니다.
		ServletContext sc = this.getServletContext();
		//ServletContext sc = request.getSession().getServletContext();
		
		sc.setAttribute("food", value);
		response.sendRedirect("scope.jsp");
	}
}
