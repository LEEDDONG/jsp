<%@page import="org.apache.catalina.User"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="dao.UserDAO" %>

<!DOCTYPE html>

<%
request.setCharacterEncoding("utf-8");
String uid=request.getParameter("id");
String ups=request.getParameter("ps");

UserDAO dao=new UserDAO();

// 본인인증 절차를 추가
String loggedInUserId = (String) session.getAttribute("id"); // 세션에 저장된 로그인한 사용자의 아이디를 가져옴
String message = "";
if (loggedInUserId == null || !loggedInUserId.equals(uid)) { // 로그인한 사용자와 탈퇴하려는 사용자가 일치하지 않으면
	message = "회원 탈퇴는 로그인한 본인만 가능합니다.";
} else {
	int code=dao.login(uid, ups);
	if(code==1){
		message = "아이디가 존재하지 않습니다.";
	}else if(code==2){
		message = "패스워드가 일치하지 않습니다.";
	}else{
		if (dao.delete(uid)) {
			response.sendRedirect("loginForm.jsp");
			return;
		}
	}
}
%>
<html>
<head>
    <meta charset="EUC-KR">
    <title>Insert title here</title>
    <script>
        alert("<%= message %>");
        location.href = "withdrawform.jsp";
    </script>
</head>

<body>

</body>
</html>
