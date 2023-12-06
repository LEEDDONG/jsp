<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
            background-color: rgba(0, 0, 0, 0.6);
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
        input[type="submit"] {
            background-color:rgba(0, 0, 0, 0.2);
            color: #fff;
            cursor: pointer;	  
            border: none;
        }

        input[type="submit"]:hover {
             transform: scale(1.1);
             transition:all 0.3s;
        }
         
        
    </style>
</head>
<body>
<div class="navbar">
    <a href="main.jsp" class="home">Home</a>
    <a href="updateForm.jsp">Update</a>
    <a href="withdrawform.jsp">Delete</a>
    <a href="logout.jsp">Logout</a>
</div>
<form action="withdraw.jsp" method="post">
<table align=center>
<tr><td colspan=2 align=center ><h2><b>회원탈퇴</b></h2><td></tr>
<tr>
    <td align=right>아이디&nbsp;</td>
    <td><input type="id" name="id" required ></td>
    
</tr>
<tr>
    <td align=right>패스워드&nbsp;</td>
    <td><input type="password" name="ps" required ></td>
    
</tr>
<tr>
    <td colspan=2 align=center height=50>
        <input type="submit" value="회원탈퇴하기">
    </td>
</tr>
</table>

</body>
</html>