package report;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/report/send")
public class send extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  public send() {
		  super();
	    	System.out.println("���� ������ �Դϴ�.");
	    }
		
	   
	    
	    public void doGet(HttpServletRequest request,
    			HttpServletResponse response)
    				throws ServletException, IOException{
	    	request.setCharacterEncoding("euc-kr");//�ѱ۰���
		    response.setContentType("text/html;charset=euc-kr");
	    	
		    String id = request.getParameter("id");
	    	String pass = request.getParameter("pass");
	    	String jumin1 = request.getParameter("jumin1");
	    	String jumin2 = request.getParameter("jumin2");
	    	String email = request.getParameter("email");
	    	String sel = request.getParameter("sel");
	    	String domain = request.getParameter("domain");
	    	String hobby = request.getParameter("hobby");
	    	String post1 = request.getParameter("post1");
	    	String post2 = request.getParameter("post2");
	    	String addr = request.getParameter("address");
	    	String intro = request.getParameter("intro");
	    	PrintWriter out = response.getWriter();
	    /*
	     * �������� ������ ��� ��ȿ�� �˻翡�� 
	     * $("#domain").attr("disabled","disabled");�� ��Ȱ��ȭ�� ���״�.
	     * ��Ȱ��ȭ�� ��� ������ �� ������ �̷������ �ʴ���.
	     * - �ּ�â�� Ȯ���� ���� �������� ������ ��� domain�� ���۵��� �ʰ� sel�� ���۵ȴ�.
	     * - ���� �Է��� ��쿡�� domain�� ���� ����Ǿ� ���۵ǰ� sel�� ���� ���� ���·� ���۵ȴ�.	   	
	     */
		    
	    	out.println("<br>" + "ID = " + id + "<br>");
	    	out.println("��й�ȣ = " + pass + "<br>");
	    	out.println("�ֹι�ȣ = " +jumin1 + "-" + jumin2 + "<br>");
	    	if(sel.equals(""))
				 out.println("email = " + email +"@"+domain +"<br>");
			 else
				 out.println("email = " + email + "@"+ sel +"<br>");
	    	out.println("��� = " + hobby +"<br>");
	    	out.println("���� ��ȣ = "+post1+"-"+post2 +"<br>");
	    	out.println("�ּ� = " + addr + "<br>");
	    	out.println("�ڱ�Ұ� = " + intro +"<br>");
	    	out.close();
    	
    }
	    
}
