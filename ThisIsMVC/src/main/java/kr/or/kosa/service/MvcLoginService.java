package kr.or.kosa.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
				// 세션 생성 및 속성 추가
		        HttpSession session = request.getSession(); // 기존 세션이 있으면 리턴, 없으면 생성
		        if (session != null) {
		            session.setAttribute("id", id);
		        }
			} else {
				msg = "패스워드가 틀립니다.";
			}
		} else {
			msg = "아이디가 없습니다.";
		}
		
		request.setAttribute("board_msg", msg);
		
	  	ActionForward forward = new ActionForward();
	  	forward.setRedirect(false);
	  	forward.setPath("/main.jsp"); //동우가 만들었겠지
		
		return forward;
	}

}
