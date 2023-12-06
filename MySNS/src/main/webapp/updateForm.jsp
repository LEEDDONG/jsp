<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.*" %>

<%
    String uid = (String) session.getAttribute("id");
    if (uid == null) {
        response.sendRedirect("loginForm.jsp");
        return;
    }
    session.setAttribute("id", uid);
	
    UserDAO dao = new UserDAO();
    UserBean user = dao.getUser(uid);
    
    String id = user.getId();
    String name=user.getName();
    String address=user.getAddress();
    String phone=user.getPhone();


%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <style>

 
 		
body {
  font-family: 'Arial', sans-serif;
  background: url('lol.jpg')no-repeat;
  background-size: cover;
  background-position: center;
  position: relative;
  			
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  color: white;
}

form {
  background-color: rgba(0, 0, 0, 0.2);
  padding: 20px;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  width: 700px;
  height: 70vh;
  display: flex;
  flex-direction: column;
  align-items: center;
}

table {
  width: 100%;
}

td {
  padding: 10px;
  color: white;
}

input {
  width: 100%;
  padding: 8px;
  box-sizing: border-box;
  margin-bottom: 10px;
  border-radius: 8px;
}

input[type="submit"] {
  background-color: rgba(0, 0, 0, 0.2);
  color: #fff;
  cursor: pointer;
  border: none;
}

input[type="submit"]:hover {
  transform: scale(1.1);
  transition: all 0.3s;
}

h2 {
  margin-bottom: 20px;
  text-align: center;
}
</style>
</head>

<script type="text/javascript">
function pass_check() {
    var ps = document.getElementsByName('ps')[0].value;
    var ps2 = document.getElementsByName('ps2')[0].value;
    var regex = /^[A-Za-z]\w*\d+\w*$/;

    if (!regex.test(ps) || ps.length < 8) {
        alert("비밀번호는 영문자로 시작하며, 숫자를 포함하고 총 길이가 8자 이상이어야 합니다.");
        return false;
    }

    if (ps != ps2) {
        alert("패스워드가 일치하지 않습니다. 다시 확인해 주세요.");
        return false;
    }

    return true;
}
function phone_check() {
    var phone = document.getElementsByName('phone')[0].value;
    var regex = /^01[016789]-\d{3,4}-\d{4}$/;

    if (!regex.test(phone)) {
        alert("전화번호는 '010-0000-0000' 형식으로 입력해 주세요.");
        return false;
    }

    return true;
}
</script>
<body>


<form action="update.jsp" method="post">
<table align=center>
<tr><td colspan=2 align=center ><h2><b>회원정보 수정</b></h2></td></tr>
<tr>
    <td align=center>아이디&nbsp;</td>
    <td><input type="text" name="id"id="id" placeholder="Email address" value=<%= id %> required readonly></td>
</tr>
<tr>
    <td align=center>패스워드&nbsp;</td>
    <td><input type="password" name="ps" required></td>
</tr>
<tr> 
    <td align=center>패스워드(확인)&nbsp;</td>
    <td><input type="password" name="ps2" required></td>
</tr>
<tr>
    <td align=center>이름&nbsp;</td>
    <td><input type="text" name="name"value=<%= name %> required ></td> 
</tr>
<tr><td align=center>주소&nbsp;</td>
<td><input type="text" name="address"id="address" value=<%= address %> required></td></tr>
<tr><td align=center>전화번호&nbsp;</td>
<td><input type="text" name="phone"id="phone" value=<%= phone %>  required></td></tr>
<tr>
    <td colspan=2 align=center height=50>
        <input type="submit" value="회원수정하기" onclick="pass_check()">
    </td>
</tr>
</table>

</body>
</html>