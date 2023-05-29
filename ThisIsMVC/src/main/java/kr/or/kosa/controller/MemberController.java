package kr.or.kosa.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.action.Action;
import kr.or.kosa.action.ActionForward;

@WebServlet("*.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberController() {
        super();
    }
    
    private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.한글
    	//2.데이터 받기
    	//3.요청 판단하기 ... 판단에 따른 서비스 실행
    	//4.데이터 담기
    	//5.뷰지정
    	//6.뷰 forward
    	
    	request.setCharacterEncoding("UTF-8");
    	
    	String requestUri = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String urlcommand = requestUri.substring(contextPath.length());
    	
    	System.out.println("requestUri : " + requestUri);
    	System.out.println("contextPath : " + contextPath);
    	System.out.println("urlcommand : " + urlcommand);
    	
    	Action action=null;
    	ActionForward forward=null;
    	
    	if(urlcommand.equals("/memberadd.do")) {
    	    // 회원가입
    	    action = new MemberAddServiceAction();
    	    forward = action.execute(request, response);
    	} else if(urlcommand.equals("/mcvlogin.do")) {
    	    // 로그인
    	    action = new MvcLoginServiceAction();
    	    forward = action.execute(request, response);
    	} else if(urlcommand.equals("/memberlist.do")) {
    	    // 회원정보
    	    action = new MemberListServiceAction();
    	    forward = action.execute(request, response);
    	} else if(urlcommand.equals("/membersearch.do")) {
    	    // 회원검색
    	    action = new MemberSearchServiceAction();
    	    forward = action.execute(request, response);
    	} else if(urlcommand.equals("/memberupdate.do")) {
    	    // 회원수정
    	    action = new MemberUpdateServiceAction();
    	    forward = action.execute(request, response);
    	} else if(urlcommand.equals("/memberdelete.do")) {
    	    // 회원삭제
    	    action = new MemberDeleteServiceAction();
    	    forward = action.execute(request, response);
    	}
    	
    	if(forward != null) {
    		if(forward.isRedirect()) {
    			response.sendRedirect(forward.getPath());
    		}else {

    	    	RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
    	    	dis.forward(request, response);
    		}
    	}
    }
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
