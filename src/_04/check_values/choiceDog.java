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
	    	System.out.println("���� ������ �Դϴ�.");
	    }
		
	   
	    
	    public void doPost(HttpServletRequest request,
    			HttpServletResponse response)
    				throws ServletException, IOException{
	    response.setContentType("text/html;charset=euc-kr");
	    PrintWriter out = response.getWriter();
	    /*
	     * request.getParameterValues("dog")
	     * �ϳ��� �Ķ���� �̸�(dog)���� ���� ���� �� ���۵Ǿ� �� ��쿡 ��� 
	     * ���� �̸����� ���� ���� �Ķ���� ���� �����ϱ� ���ؼ� ����ϰ� �մ� 
	     * üũ �ڽ��� �̸��� ���������� dog�� �����Ǿ� �����Ƿ�
	     * �� üũ �ڽ��� ������ ������ �̹��� ���ϸ��� �����Ͽ� �Ķ���Ͱ�����
	     * ������ �̹��� �̸��� ���۵ǵ��� �ϰ� �ֽ��ϴ�.
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
