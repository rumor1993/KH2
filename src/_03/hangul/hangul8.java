package _03.hangul;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/ch3/_3.hangul/hangul8")
public class hangul8 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  public hangul8() {
		  super();
	    	System.out.println("���� ������ �Դϴ�.");
	    }
		
	   
	    
	    public void doGet(HttpServletRequest request,
    			HttpServletResponse response)
    				throws ServletException, IOException{
	    
	    //request.setCharacterEncoding("euc-kr"); �ι�° ���
	    response.setContentType("text/html;charset=euc-kr");
    	
    	   	
    	String name = request.getParameter("name");
    	
    	
    	
    	PrintWriter out = response.getWriter();
    	
    
    	out.println("<br>" + "�̸� = " + name + "<br>");
    	
    	out.close();
    }
	    
}
