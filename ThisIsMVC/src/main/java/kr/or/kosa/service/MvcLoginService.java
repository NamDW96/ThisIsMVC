package kr.or.kosa.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.action.Action;
import kr.or.kosa.action.ActionForward;
import kr.or.kosa.dao.KoreaMemberDao;

public class MvcLoginService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String msg = "";
	  	String url = "";
		
		KoreaMemberDao dao = new KoreaMemberDao();
		String result = dao.isKoreaMemberId(id);
		
		if(result == "true") {
			result = dao.isKoreaMemberIdPwd(id,pwd);
			if(result == "true") {
				msg = "로그인 성공";
			} else {
				msg = "패스워드가 틀립니다.";
			}
		} else {
			msg = "아이디가 없습니다.";
		}
		
		request.setAttribute("board_msg", msg);
		request.setAttribute("pagePath", "/WEB-INF/views/loginOk.jsp");
		
	  	ActionForward forward = new ActionForward();
	  	forward.setRedirect(false);
	  	forward.setPath("/WEB-INF/views/redirect.jsp"); // 동우가 만들었겠지
		
		return forward;
	}

}
