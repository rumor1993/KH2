package _02.memReg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/ch3/_2.memReg/memReg")
public class memReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  public memReg() {
		  super();
	    	System.out.println("���� ������ �Դϴ�.");
	    }
		
	   
	    
	    public void doPost(HttpServletRequest request,
    			HttpServletResponse response)
    				throws ServletException, IOException{
	    request.setCharacterEncoding("euc-kr");//�ѱ۰���
	    response.setContentType("text/html;charset=euc-kr");
    	
    	   	
    	String name = request.getParameter("name");
    	String addr = request.getParameter("addr");
    	String tel = request.getParameter("tel");
    	String hobby = request.getParameter("hobby");
    	
    	
    	PrintWriter out = response.getWriter();
    	
    
    	out.println("<br>" + "ȸ���� = " + name + "<br>");
    	out.println("�ּ� = " + addr + "<br>");
    	out.println("��ȭ��ȣ = " + tel + "<br>");
    	out.println("���  = " + hobby + "<br>");
    	out.close();
    }
	    
}
