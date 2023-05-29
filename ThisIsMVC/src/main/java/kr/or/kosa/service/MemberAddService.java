package kr.or.kosa.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.action.Action;
import kr.or.kosa.action.ActionForward;
import kr.or.kosa.dao.KoreaMemberDao;
import kr.or.kosa.dto.KoreaMember;

public class MemberAddService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
	  

	  String id = request.getParameter("id");
  	  String pwd = request.getParameter("pwd");
  	  String name = request.getParameter("name");
  	  int age = Integer.parseInt(request.getParameter("age"));
  	  String gender = request.getParameter("gender");
  	  String email = request.getParameter("email");
  	  String ip = request.getHeader("X-Forwarded-For");
		
  	  KoreaMember m = KoreaMember.builder()
					.id(id)
					.pwd(pwd)
					.name(name)
					.age(age)
					.gender(gender)
					.email(email)
					.build();
	
  	  KoreaMemberDao dao = new KoreaMemberDao();
  	  int result = dao.insertMember(m);
  	  
  	  //규칙 (성공,실패하던  msg 작성되고 조건에 이동하는 페이지가 생성)
  	  String msg="";
  	  String url="";
  	  if(result > 0) {
  		  msg="회원가입 성공";  		  
  	  }else {
  		  msg="회원가입 실패";  		  
  	  }
  	  
  	  request.setAttribute("board_msg", msg);  	  
  	  request.setAttribute("pagePath", "/WEB-INF/views/joinForm.jsp");
  	  
  	  ActionForward forward = new ActionForward();
  	  forward.setRedirect(false);
  	  forward.setPath("/main.jsp"); //동우가 만들었겠지
  	  
  	  return forward;
	}

}
