package com.springbook.biz.view.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ViewRendererServlet;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;
import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;


//하나의 Controller에서 Client의 모든 요청을 처리하고 있다. 부하가 심하게 걸림

//@WebServlet(name = "action", urlPatterns = { "*.do" })
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private HandlerMapping handlerMapping;//객체 변수선언
	private ViewResolver viewResolver;
	
	//HttpServlet 클래스의 init()메소드 재정의 : 톰캣 서버가 실행될때 init메소드 호출
		//init() 메소드는 초기값을 설정 하는 메소드
	@Override
	public void init() throws ServletException {
		System.out.println("톰캣 서비스 시작시 호출 - init()");
		handlerMapping = new HandlerMapping();
		viewResolver = new ViewResolver();
		
		viewResolver.setPrfix("./");
		viewResolver.setSuffix(".jsp");
		
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 클라이언트에서 GET방식으로 들어오는 모든 요청을 process메소드에서 처리하도록 던져준다.
		process(request, response);

	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 클라이언트에서 Post방식으로 들어오는 모든 요청을 process메소드에서 처리하도록 던져준다.
		request.setCharacterEncoding("EUC-KR");
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. 클라이언트의 요청 path정보를 추출
		String uri = request.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/")); // path: 클라이언트 요청(*.do)
		System.out.println(path);
		
		// 2. HandlerMapping을 통해서 path에 해당하는 Controller를 검색 한다.
			//ctrl는 클라이언트 요청 정보에 대한 컨트롤러 객체를 리턴받아온다.
		Controller ctrl = handlerMapping.getController(path);
		
		// 3. 검색된 Controller 를 실행 한다. 리턴 값으로 뷰페이지를 리턴 받아온다.
			//viewName : view페이지가 들어있다
		String viewName = ctrl.handlerRequest(request, response);
		
		// 4. 뷰 페이지 이름을 완성해서 처리
		String view = null;
		if(!viewName.contains(".do")) {
			view = viewResolver.getView(viewName);
		}else {
			view = viewName;
		}
		
		// 5. 검색된 ViewPage로 이동
		response.sendRedirect(view);
		
		
		
	}
}
