<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="../css/style.css" rel="stylesheet" type=text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
<div class="main-letter">Music Is My Life 
          <a class="btn btn-default" href="/home/index">HOME</a>
       </div>
<div class="main-overlay" ><!-- style="background-color: rgba(0,0,0,0.5);" -->
	<form name="mainForm" action="" methode="post">
		<table border="1" align="center">
		<header id="main" >
       
    </header>
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
	</div>
</body>
</html>