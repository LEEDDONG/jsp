<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dao.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>작성글 리스트</title>
    <style>
       body {
    font-family: Arial, sans-serif;
    background: url('lol.jpg') no-repeat;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    position: relative;
    margin: 0;
    padding: 0;
    height: 100vh; /* Set the height to cover the entire viewport */
}
    .container {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
      
    }

    table {
        background-color: rgba(0, 0, 0, 0.3);
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 700px;
        margin: 10px auto;
        
    }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
            color:white;
            }

        th {
            background-color: rgba(0, 0, 0, 0.2);
            color: white;
        }

        td img {
            max-width: 100%;
            height: auto;
        }

        button {
            background-color:rgba(0, 0, 0, 0.6); 
            color: white;
            border: none;
            padding: 10px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 10px;
            cursor: pointer;
            border-radius: 5px;
        }

       
        .navbar {
            width: 700px; 
            display: flex;
            color
            justify-content: space-between;
            align-items: center;
            margin: 0 auto;
            margin-top: 10px; 
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin-right: 15px;
        }

        .navbar a.home {
            margin-right: auto;
        }
        
        button:hover {
        transform: scale(1.2);
        transition: all 0.3s;
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

    <div class="container">

<%
    String uid = (String) session.getAttribute("id");
    if (uid == null) {
        response.sendRedirect("loginForm.jsp");
        return;
    }
    session.setAttribute("id", uid);
    
    ArrayList<FeedObj> feeds = (new FeedDAO()).getList();
    
    out.println("<table>");
    out.println("<tr><th>작성글 리스트</th>");
    out.println("<th style='text-align:right;'><a href='feedAddForm.jsp'><button>글쓰기</button></a></th></tr>");
    
    for (FeedObj feed : feeds) {
        String img = feed.getImages();
        String imgstr = (img != null) ? "<img src='images/" + img + "' width='240'>" : "";
        String deleteButton = (uid.equals(feed.getId())) ? "<a href='delete.jsp?id=" + feed.getId() + "'><button>삭제</button></a>" : "";
        
        out.println("<tr><td colspan='2'></td></tr>");
        out.println("<tr><td><small>" + feed.getId() + "</small></td>");
        out.println("<td><small>&nbsp;(" + feed.getTs() + ")</small></td></tr>");
        out.println("<tr><td colspan='2'>" + imgstr + "</td></tr>");
        out.println("<tr><td colspan='2'>" + feed.getContent() + "</td></tr>");
     
    }

    for (FeedObj feed : feeds) {
        String img = feed.getImages();
        String imgstr = (img != null) ? "<img src='images/" + img + "' width='240'>" : "";
        
        out.println("<tr><td colspan='2'></td></tr>");
        out.println("<tr><td><small>" + feed.getId() + "</small></td>");
        out.println("<td><small>&nbsp;(" + feed.getTs() + ")</small></td></tr>");
        out.println("<tr><td colspan='2'>" + imgstr + "</td></tr>");
        out.println("<tr><td colspan='2'>" + feed.getContent() + "</td></tr>");
    }
    out.println("</table>");
%>
 </div>
</body>
</html>
