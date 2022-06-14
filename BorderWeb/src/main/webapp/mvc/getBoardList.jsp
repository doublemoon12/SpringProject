<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%@ page import = "com.springbook.biz.impl.BoardDAO" %>
<%@ page import = "com.springbook.biz.BoardVO" %>

<%
/*	BoardVO vo = new BoardVO();
	BoardDAO boardDAO = new BoardDAO();
	List<BoardVO> boardList = boardDAO.getBoardList(vo);
*/
	List<BoardVO> boardList = (List)session.getAttribute("boardList");

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<center>
	<h1>�� ���</h1>
	<form action = "getBoardList.do" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<td align = "right">
					<select name = "searchCondition">
						<option value = "TITLE">����
						<option value = "CONTENT">����
					</select>
						<input name = "searchKetword" type="text"/>
						<input type = "submit" value = "�˻�"/>
				</td>
			</tr>
		</table>
	</form>

<table border="1" cellpadding="0" cellspacing="0" width="700">
	<tr>
		<th bgcolor="orange" width="100">��ȣ</th>
		<th bgcolor="orange" width="200">����</th>
		<th bgcolor="orange" width="150">�ۼ���</th>
		<th bgcolor="orange" width="150">�����</th>
		<th bgcolor="orange" width="100">��ȸ��</th>
	</tr>

 <%
	for(BoardVO board : boardList){
%>
	<tr>
		<td><%=board.getSeq() %></td>
		<td align = "left">
			<a href = "getBoard.do?seq=<%= board.getSeq() %>"><%= board.getTitle() %></a>
		</td>
			<td><%= board.getWriter() %></td>
			<td><%= board.getRegdate() %></td>
			<td><%= board.getCnt() %></td>
		</tr>
		<%
			}
		%>

</table> 

<br> <a href="insertBoard.jsp">���� ���</a>
</center>

</body>
</html>