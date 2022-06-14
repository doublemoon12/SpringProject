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


//�ϳ��� Controller���� Client�� ��� ��û�� ó���ϰ� �ִ�. ���ϰ� ���ϰ� �ɸ�

//@WebServlet(name = "action", urlPatterns = { "*.do" })
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private HandlerMapping handlerMapping;//��ü ��������
	private ViewResolver viewResolver;
	
	//HttpServlet Ŭ������ init()�޼ҵ� ������ : ��Ĺ ������ ����ɶ� init�޼ҵ� ȣ��
		//init() �޼ҵ�� �ʱⰪ�� ���� �ϴ� �޼ҵ�
	@Override
	public void init() throws ServletException {
		System.out.println("��Ĺ ���� ���۽� ȣ�� - init()");
		handlerMapping = new HandlerMapping();
		viewResolver = new ViewResolver();
		
		viewResolver.setPrfix("./");
		viewResolver.setSuffix(".jsp");
		
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Ŭ���̾�Ʈ���� GET������� ������ ��� ��û�� process�޼ҵ忡�� ó���ϵ��� �����ش�.
		process(request, response);

	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Ŭ���̾�Ʈ���� Post������� ������ ��� ��û�� process�޼ҵ忡�� ó���ϵ��� �����ش�.
		request.setCharacterEncoding("EUC-KR");
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. Ŭ���̾�Ʈ�� ��û path������ ����
		String uri = request.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/")); // path: Ŭ���̾�Ʈ ��û(*.do)
		System.out.println(path);
		
		// 2. HandlerMapping�� ���ؼ� path�� �ش��ϴ� Controller�� �˻� �Ѵ�.
			//ctrl�� Ŭ���̾�Ʈ ��û ������ ���� ��Ʈ�ѷ� ��ü�� ���Ϲ޾ƿ´�.
		Controller ctrl = handlerMapping.getController(path);
		
		// 3. �˻��� Controller �� ���� �Ѵ�. ���� ������ ���������� ���� �޾ƿ´�.
			//viewName : view�������� ����ִ�
		String viewName = ctrl.handlerRequest(request, response);
		
		// 4. �� ������ �̸��� �ϼ��ؼ� ó��
		String view = null;
		if(!viewName.contains(".do")) {
			view = viewResolver.getView(viewName);
		}else {
			view = viewName;
		}
		
		// 5. �˻��� ViewPage�� �̵�
		response.sendRedirect(view);
		
		
		
	}
}
