<%-- 
    Document   : admin
    Created on : Dec 14, 2020, 5:53:44 PM
    Author     : Murad Computer
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <link rel="shortcut icon" href="img/icon.png">
    <link rel="stylesheet" href="css/register.css" />
        <title>Sign in & Sign up Form</title>
    </head>
    <body>
        <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <form action="view.jsp" method="post" class="sign-in-form">
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Admin Email" name="email" required>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" name="password" required>
            </div>
            <input type="submit" value="Login" class="btn solid" />
            <p class="social-text">Go back to the Homepage!</p>
            <div class="social-media">
              <a href="index.jsp" class="social-icon">
                <i class="fab fa-houzz"></i>
              </a>
            </div>
          </form>
        </div>
      </div>
            <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>Admin Panel</h3>
            <p>
                Hurry Up! Admin Please Login Your Account <br> & Check Employee Records!
            </p>
          </div>
          <img src="img/log.svg" class="image" alt="" />
        </div>
</html>