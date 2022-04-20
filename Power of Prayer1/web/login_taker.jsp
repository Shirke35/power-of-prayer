<%-- 
    Document   : login_taker
    Created on : Oct 5, 2021, 11:36:21 AM
    Author     : SANIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
        <title>login_taker </title>
    </head>
    <body>
        <style>
  
* {
  padding: 0;
  margin: 0;
  list-style: none;
  border: none;
  text-decoration: none;
  box-sizing: border-box;
  -webkit-overflow-scrolling: touch;
  font-family: 'Montserrat', sans-serif;
}

body {
  background-color: #fffbfa;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
}

.login {
  width: 970px;
  height: 680px;
  border-radius: 15px;
  display: flex;
  box-shadow: 0px 22px 65px rgba(227, 0, 162, 0.2);
  padding: 20px;
}
.login .image img {
  width: 440px;
  height: 640px;
  border-radius: 10px;
}
.login .details {
  margin-left: 90px;
  display: flex;
  flex-direction: column;
  height: 640px;
}
.login .details .title {
  font-size: 22px;
  margin-top: 68px;
}
.login .details .input {
  height: auto;
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  margin-top: 33px;
}
.login .details .input label {
  font-size: 14px;
}
.login .details .input input {
  width: 314px;
  height: 58px;
  font-size: 16px;
  padding: 20px;
  margin-top: 8px;
  background-color: #fffbfa;
  border: 1px solid #d9d5d4;
  border-radius: 5px;
  color: rgba(22, 28, 50, 0.5);
}
.login .details .login-button {
  background-color: #a04625;
  width: 314px;
  height: 58px;
  font-size: 16px;
  color: #fff;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 5px;
  box-shadow: 0px 18px 23px rgba(227, 160, 77, 0.49);
  margin-top: 20px;
  cursor: pointer;
}
.login .details .between-button {
  margin: 30px 0px;
  font-size: 16px;
  color: #8a8b95;
  display: block;
}
.login .details .linkedin-button {
  background-color: #0d65c2;
  width: 314px;
  height: 58px;
  font-size: 16px;
  color: #fff;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 5px;
  box-shadow: 0px 18px 23px rgba(13, 101, 194, 0.36);
  cursor: pointer;
}
.login .details .signup {
  display: block;
  color: #0d65c2;
  margin-top: auto;
}
</style>


  <div class="login">
  <div class="image"><img src="bgpic3.jpg" alt=""></div>
  
  <div class="details">
    <h1 class="title">Log in As Prayer Taker</h1>
    <form action="Login_Taker" method="Post">
    <div class="input"><label for="">Name
      </label>
      <input type="text" name1="name1" placeholder="Enter your full name">
    </div>
         <div class="input"><label for="">Email
      </label>
      <input type="text" name="email" placeholder="Enter your email">
    </div>
         <div class="input"><label for="">Password
      </label>
      <input type="password" name="password" placeholder="Enter your password">
    </div>

    
    <button class="login-button">Log in</button>
    
            <path id="Path" d="M0,0H34V34H0Z" fill="none" />
        <rect id="Rectangle" width="22.667" height="22.667" rx="2.833" transform="translate(5.667 5.667)" fill="none" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" stroke-width="2.125" />
        <path id="Path-2" data-name="Path" d="M.708,0V7.083" transform="translate(10.625 15.583)" fill="none" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" stroke-width="2.125" />
        <path id="Path-3" data-name="Path" d="M.708.7V.715" transform="translate(10.625 10.632)" fill="none" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" stroke-width="2.125" />
        <path id="Path-4" data-name="Path" d="M.708,7.083V0" transform="translate(16.292 15.583)" fill="none" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" stroke-width="2.125" />
        <path id="Path-5" data-name="Path" d="M5.667,7.083V2.833A2.833,2.833,0,1,0,0,2.833" transform="translate(17 15.583)" fill="none" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" stroke-width="2.125" />
      </svg>
      <br>

      
    I'am new here &nbsp; <a href="register_taker.jsp">Register</a>
  </div>
</div>
</form>
    </body>
</html>
