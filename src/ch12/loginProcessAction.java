package ch12;

import java.io.PrintWriter;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ch12.db.MemberDAO;

public class loginProcessAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) 
			throws Exception {
	
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("euc-kr");
		String sid = request.getParameter("id");
		String spass = request.getParameter("passwd");
		
		MemberDAO mdao = new MemberDAO();
		int result = mdao.isId(sid, spass);
		System.out.println("����� " + result);
		
		if(result == 1) {
			HttpSession session = request.getSession();
			//�α��� ����
			session.setAttribute("id", sid);
			forward.setRedirect(false);
			forward.setPath("./ch11/Member/main.jsp");
			return forward;
		}else {
			String message = "";
			if(result == -1) {
				message = "���̵� �������� �ʽ��ϴ�.";
			}else
				message = "��й�ȣ�� �������� �ʽ��ϴ�.";
			
			response.setContentType("text/html;charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('"+ message +"');");
			out.println("location.href ='./login.net';");
			out.println("</script>");
			out.close();
			return null;
		}

		
	}
	
	

}
