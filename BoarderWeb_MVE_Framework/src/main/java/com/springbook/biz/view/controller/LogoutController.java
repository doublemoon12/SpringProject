package com.springbook.biz.view.controller;

import javax.servlet.http.HttpSession;

public class LogoutController implements Controller{

	System.out.println("�α׾ƿ� ó��");

	// 1. �������� ����� ���� ��ü�� ���� �����Ѵ�.
	HttpSession session = request.getSession();
	session.invalidate();

	// 2. ���� ���� ��, ���� ȭ������ �̵��Ѵ�.

}
