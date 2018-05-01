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
	    	System.out.println("저는 생성자 입니다.");
	    }
		
	   
	    
	    public void doGet(HttpServletRequest request,
    			HttpServletResponse response)
    				throws ServletException, IOException{
	    	request.setCharacterEncoding("euc-kr");//한글가능
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
	     * 도메인을 선택한 경우 유효성 검사에서 
	     * $("#domain").attr("disabled","disabled");로 비활성화를 시켰다.
	     * 비활성화된 경우 서버로 값 전송이 이루어지지 않느다.
	     * - 주소창을 확인해 보면 도메인을 선택한 경우 domain은 전송되지 않고 sel만 전송된다.
	     * - 직접 입력한 경우에는 domain은 값이 저장되어 전송되고 sel은 값이 없는 상태로 전송된다.	   	
	     */
		    
	    	out.println("<br>" + "ID = " + id + "<br>");
	    	out.println("비밀번호 = " + pass + "<br>");
	    	out.println("주민번호 = " +jumin1 + "-" + jumin2 + "<br>");
	    	if(sel.equals(""))
				 out.println("email = " + email +"@"+domain +"<br>");
			 else
				 out.println("email = " + email + "@"+ sel +"<br>");
	    	out.println("취미 = " + hobby +"<br>");
	    	out.println("우편 번호 = "+post1+"-"+post2 +"<br>");
	    	out.println("주소 = " + addr + "<br>");
	    	out.println("자기소개 = " + intro +"<br>");
	    	out.close();
    	
    }
	    
}
