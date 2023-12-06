<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>글 작성</title>
    <style>
        body {
            font-family: Arial, sans-serif;
			background: url('lol.jpg')no-repeat;
            background-size: cover;
  			background-position: center;
  			position: relative;
  			
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 80vh;
            color: white;
        }

        .navbar {
            width: 500px; 
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 0 auto;
            margin-bottom: 10px; 
            margin-top: 100px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin-right: 15px;
        }

        .navbar a.home {
            margin-right: auto; 
        }

        table {
            background-color: rgba(0, 0, 0, 0.3);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 500px;
            margin: 0 auto; 
        }

        tr, td {
            padding: 15px;
        }

        td input[type="text"],
        td textarea,
        td input[type="file"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        td input[type="submit"] {
            background-color: rgba(0, 0, 0, 0.2);
            color: white;
            border: none;
            padding: 10px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            cursor: pointer;
            border-radius: 5px;
        }
        input[type="submit"]:hover {
             transform: scale(1.1);
             transition:all 0.3s;
             background-color: rgba(0,0,0.0.6);
        }
    </style>
</head>
<%
String uid = (String) session.getAttribute("id");
	UserDAO dao = new UserDAO();
	
    UserBean user = dao.getUser(uid);
    String id = user.getId();%>
<body>
<div class="navbar">
    <a href="main.jsp" class="home">Home</a>
    <a href="updateForm.jsp">Update</a>
    <a href="withdrawform.jsp">Delete</a>
    <a href="logout.jsp">Logout</a>
</div>


<form action="feedAdd.jsp" method="post" enctype="multipart/form-data">
    <table>
        <tr>
            <td colspan="2" align="center" height="40"><h2><b>글작성</b></h2></td>
        </tr>
        <tr>
            <td align="right">아이디&nbsp;</td> 
            <td><input type="text" name="id" value=<%= id %>  required readonly></td>
        </tr>
        <tr>
            <td align="right">작성글&nbsp;</td> 
            <td><textarea name="content" rows="5" cols="20"></textarea></td>
        </tr>
        <tr>
            <td align="right">이미지&nbsp;</td> 
            <td><input type="file" name="image"></td>
        </tr>
        <tr>
            <td colspan="2" align="center" height="50">
                <input type="submit" value="업로드하기">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
