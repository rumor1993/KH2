package _10.include;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ch4/_2.include_ex/login_ok1")
public class login_ok extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public login_ok() {
        super();
        // TODO Auto-generated constructor stub
    }
/*
 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		
		//post��� ��û �ѱ� ó��
		request.setCharacterEncoding("euc-kr");
		
		//������ ������ ���� : ĳ���� �� ����
		 response.setContentType("text/html;charset=euc-kr");
		//��� ��Ʈ�� ����
		 PrintWriter out = response.getWriter();
		//���� ���� 
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//�Ķ���Ϳ� id��� �̸��� ���°��
		if(id==null) {
			System.out.println("null�Դϴ�.");
		}
		//�Ķ���� id�� ���� ���� ���
		if(id.equals("")) {
			System.out.println("�����Դϴ�.");
		}
		
		if(id.equals("java") && pw.equals("java")) {
		session.setAttribute("id", id);
		response.sendRedirect("template.jsp");
		}else if(id.equals("java") && !pw.equals("java")) {
			out.println("<script>alert('��й�ȣ�� ��ġ���� �ʽ��ϴ�.');"
					+ "history.back();</script>");
			
		}else if(!id.equals("java")){
			out.println("<script>alert('ID�� ��ġ���� �ʽ��ϴ�.');"
					+ "history.back();</script>");//�ٷ� �� �������� �̵�
		
		}
		out.close();
	}

}
