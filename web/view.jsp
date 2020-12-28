<%-- 
    Document   : view
    Created on : Dec 12, 2020, 11:03:21 AM
    Author     : Murad Computer
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String id = request.getParameter("userid");
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "tps";
    String userid = "root";
    String password = "AAaa22@@";
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Show Users Record</title>
    <link rel="shortcut icon" href="img/icon.png">
    <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
    <link href="css/view.css" rel="stylesheet" type="text/css"/>
</head>
<html>
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
                <h1>Show</h1> <h2> <font color="#17d1ac"> User's </font> Record</h2>
                
                <!--cv button-------------------->
                <a href="delete.jsp" class="cv-btn">Delete any User Record</a>
                <a href="task.jsp" class="cv-btn2">Allocate Employee Task</a>
            </div>
        <div class="container">
            <div class="regbox box">
                <table class="content-table">
                    <thead>
                        <tr>
                            <td>Id</td>
                            <td>Name</td>
                            <td>Email</td>
                            <td>Password</td>
                            <td>Date</td>
                        </tr>
                    </thead>
                    <tbody>

                        <%
                            try {
                                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                statement = connection.createStatement();
                                String sql = "SELECT * FROM tps.user";
                                resultSet = statement.executeQuery(sql);
                                while (resultSet.next()) {
                        %>
                        <tr>
                            <td><%=resultSet.getString("id")%></td>
                            <td><%=resultSet.getString("name")%></td>
                            <td><%=resultSet.getString("email")%></td>
                            <td><%=resultSet.getString("password")%></td>
                            <td><%=resultSet.getString("savedate")%></td>
                        </tr>
                        <%
                                }
                                connection.close(); 
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                </table>
            </div>
        </div>
    </body>
</html>