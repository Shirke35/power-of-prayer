<%-- 
    Document   : register_giver
    Created on : Sep 29, 2021, 6:39:47 PM
    Author     : SANIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
	<title>Register as Prayer Giver</title>
</head>
<style>
	body{
		background-color: #f1eeee;
		padding: 0px !important;
    margin: 0px !important;
    font-family: 'Montserrat', sans-serif;
	}
	header{
		height: 200px;
	}
	.main_heading{
		color: #1b4367;
		font-family:  'Montserrat', sans-serif;
		font-size: 25px;
		font-weight: bold;
		margin-left: 2%;
		/*max-width: 175px;*/
	}
	.main_head2{
		color: #1b4367;
		font-family: 'Montserrat', sans-serif;
		font-size: 20px;
		font-weight: bold;
		text-align: right;
		margin-left: 60%;		
	}
	p{
		display: inline-block;
	}

	.sub_heading{
		color: #1b4367;
		font-family: 'Montserrat', sans-serif;
		font-size: 25px;
		font-weight: bold;
		position: absolute;
		top: 19%;
		left: 69%;
		display: inline-block;
	}
	.bgpic{
		
		height:auto;
		width:38%;
		margin-top: -55.5%;
		overflow-y: hidden;
  		filter: blur(8px);
  		filter: brightness(75%);
  		margin-bottom: -5px;
	}
	.quote{
		color: white;
		font-family: 'Montserrat', sans-serif;
		font-size: 56px;
		font-weight: bold;
		position: absolute;
		top: 30%;
		left: 2%;
		display: inline-block;
		line-height: 135px;
		text-align: center;
		text-shadow: 2px 2px 5px #868e32;
	}

	.input_data{
		font-weight: bold;
		font-size: 18px;
		background-color: white;
		box-shadow: rgba(0, 0, 0, 0.07) 0px 1px 2px, rgba(0, 0, 0, 0.07) 0px 2px 4px, rgba(0, 0, 0, 0.07) 0px 4px 8px, rgba(0, 0, 0, 0.07) 0px 8px 16px, rgba(0, 0, 0, 0.07) 0px 16px 32px, rgba(0, 0, 0, 0.07) 0px 32px 64px;
		max-width: 38%;
		margin-left: 54%;
		margin-top: -5%;	
		padding: 50px 0px 35px 17px;	
	}
	.name{
		margin-left: 16%;
	}
	.email{
		margin-left: 16%;
	}
	.password{		
		margin-left: 16%;
	}
	.contact{
		margin-left: 16%;
	}
	.location{
		margin-left: 16%;
	}
	input{
	border: 1px solid #ccc;
  	border-radius: 6px;
  	padding: 12px 20px;
  	width: 135%;
  	
	}

	.button-18 {
	  align-items: center;
	  background-color: #0A66C2;
	  border: 0;
	  border-radius: 100px;
	  box-sizing: border-box;
	  color: #ffffff;
	  cursor: pointer;
	  display: inline-flex;
	  font-family: 'Montserrat', sans-serif;
	  font-size: 16px;
	  font-weight: 600;
	  justify-content: center;
	  line-height: 20px;
	  max-width: 480px;
	  min-height: 40px;
	  min-width: 0px;
	  overflow: hidden;
	  padding: 0px;
	  padding-left: 20px;
	  padding-right: 20px;
	  text-align: center;
	  touch-action: manipulation;
	  transition: background-color 0.167s cubic-bezier(0.4, 0, 0.2, 1) 0s, box-shadow 0.167s cubic-bezier(0.4, 0, 0.2, 1) 0s, color 0.167s cubic-bezier(0.4, 0, 0.2, 1) 0s;
	  user-select: none;
	  -webkit-user-select: none;
	  vertical-align: middle;
	  margin-top: 27%;
	  margin-left: -38%;

	}

	.button-18:hover,
	.button-18:focus { 
	  background-color: #16437E;
	  color: #ffffff;
	}

	.button-18:active {
	  background: #09223b;
	  color: rgb(255, 255, 255, .7);
	}

	.button-18:disabled { 
	  cursor: not-allowed;
	  background: rgba(0, 0, 0, .08);
	  color: rgba(0, 0, 0, .3);
	}


	
@media only screen and (max-width: 800px){
    .bgpic{
	    width: auto;
	    height: auto;
	}
	
}


</style>

<body>
	<header>
		<p class="main_heading">Power of Prayer</p>		
		<p class="main_head2"><img src="https://img.icons8.com/color/30/000000/welfare.png"/>Prayer Giver &nbsp &nbsp &nbsp &nbsp <img src="https://img.icons8.com/external-wanicon-lineal-color-wanicon/30/000000/external-hand-love-wanicon-lineal-color-wanicon.png"/>Prayer Taker</p>
	</header>
    <form action="Register_takerServ" method="Post">
	<div class="input_data">
	<p class="sub_heading">Register</p>	
		<p class="input name">Name
			<br><br>
			<input type="text" name="name" placeholder="Full Name" required>
		</p>
		<br>
		<p class="input email">Email
			<br><br>
			<input type="email" name="email" placeholder="Email" required>
		</p>
		<br>
		<p class="input password">Password
			<br><br>
			<input type="password" name="password" placeholder="Password" required>
		</p>
		<br>
		<p class="input contact">Contact
			<br><br>
			<input type="number" name="contact" placeholder="Phone No." required>
		</p>
		<br>
		<p class="input location">Location
			<br><br>
			<input type="text" name="location" placeholder="Location" required>
		</p>
                
                
                
		<button class="button-18" role="button">Create Account</button>
               </div>
         Already having account? &nbsp; <a href="login_giver.jsp">Log in</a>
                 
        
             
	<div class="inner_block">
		<img class="bgpic" src="bg1.jpg">
		<p class="quote">Prayer should be <br>the key of the day<br> and the lock <br>of the night.</p>
	</div>


	
</div>
</form>
</body>
</html>