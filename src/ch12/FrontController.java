package ch12;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.net")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String RequestURI=request.getRequestURI();
		System.out.println("RequestURI = " + RequestURI);
		
		// getContextPath() : ���ؽ�Ʈ ��ΰ� ��ȯ�˴ϴ�.
		// contextPath�� "/JspProject" �� ��ȯ �˴ϴ�.
		String contextPath=request.getContextPath();
		System.out.println("contextPath = " + contextPath);
		
		// RequestURI���� ���ؽ�Ʈ ��� ���� ���� �ε��� ��ġ�� ���ں���
		// ������ ��ġ ���ڱ��� �����մϴ�.
		// command�� "/login.net" ��ȯ�˴ϴ�.
		
		String command = RequestURI.substring(contextPath.length());
		System.out.println("command = " + command);
		
		
		ActionForward forward = null;
		Action action = null;
		if(command.equals("/login.net")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			// �ּ� ������� �������� ������
			forward.setPath("./ch11/Member/loginform.jsp");
		}
		
		else if(command.equals("/loginProcess.net")) {
			action = new loginProcessAction();
			try {
				forward=action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
		
		if(forward != null) {
			if(forward.isRedirect()) { // �����̷�Ʈ �˴ϴ�.
				response.sendRedirect(forward.getPath());
			}else { // ������ �˴ϴ�.
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
		


		
	}
       
    public FrontController() {
        super();
    }

	// doProcess(request,responsc) �޼��带 �����Ͽ� ��û�� get����̵�
    // post����̵� ���۵Ǿ� ���� ���� �޼��忡�� ��û�� ó���Ҽ� �ֵ��� �Ͽ���
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
