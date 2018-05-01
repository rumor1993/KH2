package _04.check_values;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/ch3/_4.check_values/choiceDog")
public class choiceDog extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  public choiceDog() {
		  super();
	    	System.out.println("저는 생성자 입니다.");
	    }
		
	   
	    
	    public void doPost(HttpServletRequest request,
    			HttpServletResponse response)
    				throws ServletException, IOException{
	    response.setContentType("text/html;charset=euc-kr");
	    PrintWriter out = response.getWriter();
	    /*
	     * request.getParameterValues("dog")
	     * 하나의 파라미터 이름(dog)으로 값이 여러 개 전송되어 올 경우에 사용 
	     * 같은 이름으로 여러 개의 파라미터 값을 전송하기 위해서 사용하고 잇는 
	     * 체크 박스의 이름은 공통적으로 dog로 지정되어 있으므로
	     * 각 체크 박스의 값으로 강아지 이미지 파일명을 지정하여 파라미터값으로
	     * 강아지 이미지 이름이 전송되도록 하고 있습니다.
	     */
	    String[] dog= request.getParameterValues("dog");
	    out.println("<html><head><style>");
	    out.println("body{background:black}");
	    out.println("table{background:yellow; margin:0 auto}");
	    out.println("td{color:red; font-size:20px; text-align:center}");
	    out.println("</style></head><body><table><tr>");
	    for(int i=0; i<dog.length; i++) {
	    	out.println("<td>" + dog[i] + "</td>");
	    }
	    out.println("</tr><tr>");
	    for(int i=0; i<dog.length; i++) {
	    	out.println("<td><img src=\"" + dog[i] + "\"></td>");
	    }
	    out.println("</tr></table></body></html>");
		out.close();
    	
    }
	    
}
