package ch12;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ch12.db.Member;
import ch12.db.MemberDAO;

public class Member_updateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		String id =(String)session.getAttribute("id");
		MemberDAO mdao = new MemberDAO();
		Member m = mdao.member_info(id);
		
		forward.setPath("./ch11/Member/update.jsp");
		forward.setRedirect(false);
		request.setAttribute("Memeberinfo", m);
	
		
		
		return forward;
		
	}

}
