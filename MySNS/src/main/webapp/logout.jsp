<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String uid = (String) session.getAttribute("id");
if (uid == null) {
    response.sendRedirect("loginForm.jsp");
    return;
}
session.removeAttribute("id");
%>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: lightslategray;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 80vh;
            color: white;
        }

        
		 a{
		color: white;
		text-decoration: none;
		}
        table {
            background-color: rgba(0, 0, 0, 0.2);
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
    </style>
<body>

<table align=center>
<tr><td colspan=2 align=center ><h2><b>로그아웃되었습니다.</b></h2><td></tr>
<tr>
	<td  colspan=2 align=center height=60>
	
	<a href="loginForm.jsp">로그인하기</a>
	</td>
	</tr>

</table>

</body>
<p></p>
