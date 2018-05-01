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
	    	System.out.println("저는 생성자 입니다.");
	    }
		
	   
	    
	    public void doPost(HttpServletRequest request,
    			HttpServletResponse response)
    				throws ServletException, IOException{
	    request.setCharacterEncoding("euc-kr");//한글가능
	    response.setContentType("text/html;charset=euc-kr");
    	
    	   	
    	String name = request.getParameter("name");
    	String addr = request.getParameter("addr");
    	String tel = request.getParameter("tel");
    	String hobby = request.getParameter("hobby");
    	
    	
    	PrintWriter out = response.getWriter();
    	
    
    	out.println("<br>" + "회원명 = " + name + "<br>");
    	out.println("주소 = " + addr + "<br>");
    	out.println("전화번호 = " + tel + "<br>");
    	out.println("취미  = " + hobby + "<br>");
    	out.close();
    }
	    
}
