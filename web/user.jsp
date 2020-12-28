<%-- 
    Document   : user
    Created on : Dec 12, 2020, 6:45:18 PM
    Author     : Murad Computer
--%>

<%@page import="newpackage.ConnectionPro"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="newpackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>User Profile</title>
        <meta http-equiv="X-UA-Compatible" content="IE-edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--title-icon--------->
        <link rel="shortcut icon" href="img/icon.png">
        <link rel="stylesheet" type="text/css" href="css/user.css"/>

        <!--using FontAwesome---------------->
        <script src="https://kit.fontawesome.com/c8e4d183c2.js" crossorigin="anonymous"></script>
    </head>
    <html>
        <body>
            <div class="name">
                <!--name--->
                <h1>Hello,</h1> <h2> I'M </font> <font color="#17d1ac"><%= user.getName()%></h2>
            </div>
            <div class="container">
                <div class="regbox box">

                    <h1>TODAY <font color="#17d1ac"> TASK <font color="#FFF"> !!!</h1>
                    
                    <!-- Task --->

                    <div class="taskcontainer">
                        <div class="taskbox box">
                            
                            <h2><font color="#17d1ac"><%= user.getTask()%></h2>
                            
                        </div>
                    </div>

                    <a href="LogoutServlet" class="button">Log Out</a>
                </div>
            </div>
        </body>
    </html>