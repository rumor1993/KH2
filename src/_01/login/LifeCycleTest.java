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
	    	System.out.println("저는 생성자 입니다.");
	    }
	  
	    public void init() throws ServletException{
	    	System.out.println("저는 init()입니다.");
	    }
	    
	  
	    public void destroy() {
	    	System.out.println("저는 destroy() 입니다.");
	    }
		
	    public void service(HttpServletRequest request,
	    			HttpServletResponse response)
	    				throws ServletException, IOException{
	    	System.out.print("저는 service()입니다.");
	    	doGet(request, response);
	    }
	    public void doGet(HttpServletRequest request,
    			HttpServletResponse response)
    				throws ServletException, IOException{
	    	//응답하는 데이터 타입이 html타입이고
	    	//charset=euc-kr로 지정하면 응답되는 데이터들의 한글 처리를 한 부분
    	response.setContentType("text/html;charset=euc-kr");
    	//getContextPath() : 웹 애플리케이션 경로 정보를 반환합니다.
    	//URL에서 포트번호와 슬래시 다음 웹 애플리케이션 이름을 지정합니다.
    	//이 값을 추출하는 메소드입니다.
    	response.getWriter().append("Served at :")
    						.append(request.getContextPath());
    	System.out.println();
    	/*
    	 * getParameter() 메소드:
    	 * name으로 전송되어 온 파라미터 값을 반환해 주는 메소드 입니다.
    	 * 클라이언트에서 전송되어 오는 id라는 이름의 파라미터 값과
    	 * passwd라는 이름의 파라미터 값을 받는 부분입니다.
    	 */
    	String id = request.getParameter("id");
    	String passwd = request.getParameter("passwd");
    	//문자열 단위로 response객체에 내용을 출력할 수 잇는 출력 스트림을 생성한 부분입니다.
    	PrintWriter out = response.getWriter();
    	
    	//응답에 id변수 값과 passwd변수 값을 출력하는 부분입니다
    	out.println("<br>" + "아이디 = " + id + "<br>");
    	out.println("비밀번호  = " + passwd + "<br>");
    	out.close();
    }
	    
}
