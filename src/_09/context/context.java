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
		
		//post��� ��û �ѱ� ó��
		request.setCharacterEncoding("euc-kr");
				
		//������ ������ ���� : ĳ���� �� ����
		response.setContentType("text/html;charset=euc-kr");
		
		String value = request.getParameter("food");
		request.setAttribute("food", value);
		
		HttpSession session = request.getSession();
		session.setAttribute("food", value);
		
		//���� �������� �Ҽӵ� �� ���ø����̼��� ServletContext ��ü�� ���ؿɴϴ�.
		ServletContext sc = this.getServletContext();
		//ServletContext sc = request.getSession().getServletContext();
		
		sc.setAttribute("food", value);
		response.sendRedirect("scope.jsp");
	}
}
