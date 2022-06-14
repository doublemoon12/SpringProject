<%@page import="com.springbook.biz.impl.BoardDAO" %>
<%@page import="com.springbook.biz.BoardVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String seq = request.getParameter("seq");
	
	BoardVO vo = new BoardVO();
	vo.setSeq(Integer.parseInt(seq));
	
	BoardDAO boardDAO = new BoardDAO();
	boardDAO.deleteBoard(vo);
	
	response.sendRedirect("getBoardList.jsp");

%>


