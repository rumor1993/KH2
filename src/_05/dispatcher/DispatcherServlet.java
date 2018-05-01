package _05.dispatcher;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ch3/_5.dispatcher/DispatcherServlet")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DispatcherServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
/*
 * ������ �̵� ���
 * 1. Dispatcher ���
 * 	- Ŭ���̾�Ʈ�κ��� ��û ���� Servlet ���α׷��� ������ ���� �ʰ�
 * 	     �ٸ� �����̳� JSP ������ � �����մϴ�(��û ������)
 * 	- �� ������� �̵��ϸ� �ּ� ǥ������ �ּҰ� ������� �ʽ��ϴ�
 * 	- request ������ �����ϰ� �˴ϴ�
 * 	- ��� : RequestDispatcher���� �����ϴ�
 * 		   �޼ҵ�(forward())�� ����Ͽ� ��û�� �������մϴ�.
 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		String value = request.getParameter("food");
		
		//dispatcher.jsp : �̵��� ������ �ּ�
		RequestDispatcher dispatcher = request.getRequestDispatcher("dispatcher.jsp");
		//request��ü�� "food" �Ӽ��� value ���� �����մϴ�.
		request.setAttribute("food", value);
		
		//�̵��մϴ�.
		dispatcher.forward(request, response);
	}


}
