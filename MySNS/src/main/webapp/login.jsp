<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO" %>
<%

	request.setCharacterEncoding("utf-8");

	String uid = request.getParameter("id");
	String upass = request.getParameter("ps");

	UserDAO dao = new UserDAO();
	int code = dao.login(uid, upass);
	String message = "";

	if (code == 1) {
		message = "아이디가 존재하지 않습니다.";
	} else if (code == 2) {
		message = "패스워드가 일치하지 않습니다.";
	} else {
		session.setAttribute("id", uid);
		response.sendRedirect("main.jsp");
		return;
	}

%>
<script>
	alert("<%= message %>");
	location.href = "loginForm.jsp";
</script>
