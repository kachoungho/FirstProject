<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<form name="mainForm" action="" methode="post">
		<table border="1" align="center">
			<tr>
				<td align="left" font="30px">학   번</td>
			</tr>
			<tr>
				<td><input type="text" style="width:400px;" name="stu_num"></td>
			</tr>
			<tr>
				<td align="left">비밀번호
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="">비밀번호 찾기</a></td>
			</tr>
			<tr>
				<td><input type="password" style="width:400px;" name="stu_pwd"></td>
			</tr>
			<tr>
				<td align="center"><input type="submit"   style="width:400px;height:30px"  value="로그인"></td>
			</tr>
		</table>
	</form>
</body>
</html>