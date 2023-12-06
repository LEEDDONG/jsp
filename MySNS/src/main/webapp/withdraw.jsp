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

// �������� ������ �߰�
String loggedInUserId = (String) session.getAttribute("id"); // ���ǿ� ����� �α����� ������� ���̵� ������
String message = "";
if (loggedInUserId == null || !loggedInUserId.equals(uid)) { // �α����� ����ڿ� Ż���Ϸ��� ����ڰ� ��ġ���� ������
	message = "ȸ�� Ż��� �α����� ���θ� �����մϴ�.";
} else {
	int code=dao.login(uid, ups);
	if(code==1){
		message = "���̵� �������� �ʽ��ϴ�.";
	}else if(code==2){
		message = "�н����尡 ��ġ���� �ʽ��ϴ�.";
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
