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
		
		//post방식 요청 한글 처리
		request.setCharacterEncoding("euc-kr");
		
		//응답의 컨텐츠 형식 : 캐릭터 셋 설정
		 response.setContentType("text/html;charset=euc-kr");
		//출력 스트림 생성
		 PrintWriter out = response.getWriter();
		//세션 생성 
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//파라미터에 id라는 이름이 없는경우
		if(id==null) {
			System.out.println("null입니다.");
		}
		//파라미터 id의 값이 없는 경우
		if(id.equals("")) {
			System.out.println("공백입니다.");
		}
		
		if(id.equals("java") && pw.equals("java")) {
		session.setAttribute("id", id);
		response.sendRedirect("template.jsp");
		}else if(id.equals("java") && !pw.equals("java")) {
			out.println("<script>alert('비밀번호가 일치하지 않습니다.');"
					+ "history.back();</script>");
			
		}else if(!id.equals("java")){
			out.println("<script>alert('ID가 일치하지 않습니다.');"
					+ "history.back();</script>");//바로 전 페이지로 이동
		
		}
		out.close();
	}

}
