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
		<h1>회원가입</h1>
		<hr>
		<form action="insertUsers.do" method="post" enctype="multipart/form-data">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">아이디</td>
					<td align="left"><input type="text" name="id" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">비밀번호</td>
					<td align="left"><input type="password" name="passwd" size="10" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">이름</td>
					<td align="left"><input name="name" cols="40" rows="10"></td>
				</tr>
				
				<tr>
					<td bgcolor="orange" width = "70">역할</td>
					<td align = "left"><input type="text" name="role"></td>
				</tr>
				
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value=" 회원가입 " /></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getUsersList.do">회원 목록 가기</a>
	</center>


</body>
</html>