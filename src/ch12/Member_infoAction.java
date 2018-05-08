package ch12;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch12.db.Member;
import ch12.db.MemberDAO;

public class Member_infoAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			request.setCharacterEncoding("euc-kr");
			String id = request.getParameter("id");
			ActionForward forward = new ActionForward();
			MemberDAO mdao = new MemberDAO();
			Member m = mdao.member_info(id);
			
			forward.setPath("./ch11/Member/select.jsp");
			forward.setRedirect(false);
			request.setAttribute("memberinfo", m);
			return forward;
		}catch(Exception e) {
			
		}
		return null;
	}

}
