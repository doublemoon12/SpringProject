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
		<h1>ȸ������</h1>
		<hr>
		<form action="insertUsers.do" method="post" enctype="multipart/form-data">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">���̵�</td>
					<td align="left"><input type="text" name="id" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">��й�ȣ</td>
					<td align="left"><input type="password" name="passwd" size="10" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">�̸�</td>
					<td align="left"><input name="name" cols="40" rows="10"></td>
				</tr>
				
				<tr>
					<td bgcolor="orange" width = "70">����</td>
					<td align = "left"><input type="text" name="role"></td>
				</tr>
				
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value=" ȸ������ " /></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getUsersList.do">ȸ�� ��� ����</a>
	</center>


</body>
</html>