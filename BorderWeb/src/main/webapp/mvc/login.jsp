<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>로그인</h1>
<form action="login.do" method = "post">
	<tr>
		<td vgcolor="orange">아이디</td>
		<td> <input type="text" name = "id"></td>
	</tr>

	<tr>
		<td vgcolor="orange">비밀번호</td>
		<td> <input type="password" name = "passwd"></td>
	</tr>
	<tr>
		<td colaspan ="2" algin = "center">
			<input type = "submit" value = "로그인"/>
	</tr>



</form>



</body>
</html>