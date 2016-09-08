<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="edu.kosta.board.BoardDAO"%>

<%
	request.setCharacterEncoding("utf-8");
%>
<%@ include file="../view/color.jsp"%>

<jsp:useBean id="vo" class="edu.kosta.board.BoardVO">
	<jsp:setProperty name="vo" property="*" />
</jsp:useBean>

<%
	int num = Integer.parseInt(request.getParameter("num"));
	String pageNum = request.getParameter("pageNum");
	String passwd = request.getParameter("passwd");

	BoardDAO dao = BoardDAO.getInstance();

	int check = dao.delete(vo);

	if (check == 1) {
		session.invalidate();
%>
<script type="text/javascript">
	alert("게시글을 삭제하였습니다.");
	history.go(-1);
</script>
<%
	response.sendRedirect("list.jsp");
	} else {
%>
<script type="text/javascript">
	alert("비밀번호가 맞지 않습니다.");
	history.go(-1);
</script>
<%}%>
