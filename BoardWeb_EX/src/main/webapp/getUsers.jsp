<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<center>
		<h1>유저 상세</h1>
		<hr>
		<form action="updateBoard.do" method="post">
			<input name="seq" type="hidden" value="${board.seq}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">아이디</td>
					<td align="left"><input name="id" type="text"
						value="${board.title }" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">이름</td>
					<td align="left">${board.writer }</td>
				</tr>
				<tr>
					<td bgcolor="orange">역할</td>
					<td align="left"><input name="role" cols="40" rows="10"/>
						${board.content }</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="유저 수정" /></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertUsers.jsp">유저 등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteUsers.do?seq=${board.seq }">유저 삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getUsersList.do">유저 목록</a>
	</center>
	
</body>
</html>