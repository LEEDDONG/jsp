<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="utf-8"%>
<%@ page import="dao.*" %>
<jsp:useBean id="user" class="dao.UserBean">
<jsp:setProperty name="user" property="*" />
</jsp:useBean>

<%
request.setCharacterEncoding("utf-8");
%>
<% 
 UserDAO dao=new UserDAO();
if(dao.exists(user.getId())){
	out.print("이미 가입한 회원입니다.");
	return;
}
if (dao.insert(user)) {
    out.print("회원 가입이 완료되었습니다.");
    response.sendRedirect("main.jsp");

}
else {
    out.print("오류가 발생하었습니다.");
}   



    %>
