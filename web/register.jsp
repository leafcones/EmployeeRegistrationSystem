<%-- 
    Document   : Register
    Created on : Dec 11, 2020, 6:39:07 PM
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
          <form action="LoginServlet" method="post" class="sign-in-form">
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Username" name="email" required>
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
          <form action="RegisterServlet" method="post" class="sign-up-form">
            <h2 class="title">Sign Up</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Username" name="name" required>
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="text" placeholder="Useremail" name="email" required>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" name="password" required>
            </div>
            <input type="submit" class="btn" value="Sign up">
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
            <h3>One of us ?</h3>
            <p>
               Hurry Up! Please Sign-up/Register Your Records!
            </p>
            <button class="btn transparent" id="sign-up-btn">
              Sign up
            </button>
          </div>
          <img src="img/log.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>One of us ?</h3>
            <p>
              Hurry Up! Please Sign-in/Login Your Personal Profile!
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
          </div>
          <img src="img/register.svg" class="image" alt="" />
        </div>
      </div>
    </div>
    <script src="js/script.js"></script>
</html>
