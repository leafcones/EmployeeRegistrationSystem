<%-- 
    Document   : delete
    Created on : Dec 10, 2020, 10:39:18 PM
    Author     : Murad Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Employee Records</title>
        <link rel="shortcut icon" href="img/icon.png">
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/delete.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!--main------------------------>
        <section id="main">
            <!--navigation-------------------------------->
            <nav>
                <!--logo--->
                <a  class="logo">ER <font color="#17d1ac">System</font></a>

                <!--language-->
                    <a href="adminLogoutServlet" class="lang">Sign out</a>
            </nav>
             <div class="name">
                <!--name--->
                <h1>Delete</h1> <h2> <font color="#17d1ac"> Employee </font> Record</h2>
                <!--cv button-------------------->
                <a href="view.jsp" class="cv-btn">Show Employees Record</a>
                
        <div class="container">
            <div class="regbox box">
                <img class="avatar" src="img/user-avatar.png">

                <form action="DeleteServlet" method="post">
                    <br>
                    <br>
                    <br>
                    <p>Enter User ID</p>
                    <input type="text" placeholder="User ID" name="empid" required>
                    <input type="submit" value="Submit">
                </form>
            </div>
        </div>
    </body>
</html>
