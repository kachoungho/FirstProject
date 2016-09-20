<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<c:if test="${result == 1}">
	<% System.out.println("로그인 성공"); %>
	<meta http-equiv="Refresh" content="0; url=/FirstProject/loginSuc.do">
	<%-- <c:redirect url="F:/th125/th125_Jsp_servlet/workspace/FirstProject/WebContent/jsp/loginSuc.jsp"/> --%>
</c:if>

<c:if test="${result == -1}">
	<script type="text/javascript">
		alert("학번과 비밀번호를 확인하세요.");
		history.go(-1);
	</script>
	<meta http-equiv="Refresh" content="0; url=main.jsp">
</c:if>
</body>
</html>