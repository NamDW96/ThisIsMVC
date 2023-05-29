package kr.or.kosa.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.action.Action;
import kr.or.kosa.action.ActionForward;
import kr.or.kosa.dao.KoreaMemberDao;
import kr.or.kosa.dto.KoreaMember;

public class MemberListService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
	  
		KoreaMemberDao dao = new KoreaMemberDao();
		List<KoreaMember> memberList = dao.getMemberList();
		request.setAttribute("memberList", memberList);
		request.setAttribute("pagePath", "/WEB-INF/views/memberlist.jsp");
  
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/main.jsp"); //동우가 만들었겠지
  
		return forward;
	}

}
