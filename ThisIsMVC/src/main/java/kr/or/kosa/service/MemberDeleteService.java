package kr.or.kosa.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.action.Action;
import kr.or.kosa.action.ActionForward;
import kr.or.kosa.dao.KoreaMemberDao;

public class MemberDeleteService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
	  
	  String id = request.getParameter("id");
 
	  KoreaMemberDao dao = new KoreaMemberDao();
  	  int result = dao.deleteMember(id);
  	  
  	  //규칙 (성공,실패하던  msg 작성되고 조건에 이동하는 페이지가 생성)
  	  String msg="";
  	  String url="";
  	  
  	  if(result > 0) {
  		  msg="삭제 성공";
  		  url="MemoList.memo"; //요청 서블릿 주소
  	  }else {
  		  msg="삭제 실패";
  		  url="memo.html";
  	  }
  	  
  	  request.setAttribute("board_msg", msg);
  	  request.setAttribute("board_url", url);
  	  
  	  ActionForward forward = new ActionForward();
  	  forward.setRedirect(false);
  	  forward.setPath("/WEB-INF/views/redirect.jsp"); //동우가 만들었겠지
  	  
  	  return forward;
	}

}
