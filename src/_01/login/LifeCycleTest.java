package _01.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/ch3/_1.login/LifeCycleTest")
public class LifeCycleTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  public LifeCycleTest() {
		  super();
	    	System.out.println("���� ������ �Դϴ�.");
	    }
	  
	    public void init() throws ServletException{
	    	System.out.println("���� init()�Դϴ�.");
	    }
	    
	  
	    public void destroy() {
	    	System.out.println("���� destroy() �Դϴ�.");
	    }
		
	    public void service(HttpServletRequest request,
	    			HttpServletResponse response)
	    				throws ServletException, IOException{
	    	System.out.print("���� service()�Դϴ�.");
	    	doGet(request, response);
	    }
	    public void doGet(HttpServletRequest request,
    			HttpServletResponse response)
    				throws ServletException, IOException{
	    	//�����ϴ� ������ Ÿ���� htmlŸ���̰�
	    	//charset=euc-kr�� �����ϸ� ����Ǵ� �����͵��� �ѱ� ó���� �� �κ�
    	response.setContentType("text/html;charset=euc-kr");
    	//getContextPath() : �� ���ø����̼� ��� ������ ��ȯ�մϴ�.
    	//URL���� ��Ʈ��ȣ�� ������ ���� �� ���ø����̼� �̸��� �����մϴ�.
    	//�� ���� �����ϴ� �޼ҵ��Դϴ�.
    	response.getWriter().append("Served at :")
    						.append(request.getContextPath());
    	System.out.println();
    	/*
    	 * getParameter() �޼ҵ�:
    	 * name���� ���۵Ǿ� �� �Ķ���� ���� ��ȯ�� �ִ� �޼ҵ� �Դϴ�.
    	 * Ŭ���̾�Ʈ���� ���۵Ǿ� ���� id��� �̸��� �Ķ���� ����
    	 * passwd��� �̸��� �Ķ���� ���� �޴� �κ��Դϴ�.
    	 */
    	String id = request.getParameter("id");
    	String passwd = request.getParameter("passwd");
    	//���ڿ� ������ response��ü�� ������ ����� �� �մ� ��� ��Ʈ���� ������ �κ��Դϴ�.
    	PrintWriter out = response.getWriter();
    	
    	//���信 id���� ���� passwd���� ���� ����ϴ� �κ��Դϴ�
    	out.println("<br>" + "���̵� = " + id + "<br>");
    	out.println("��й�ȣ  = " + passwd + "<br>");
    	out.close();
    }
	    
}
