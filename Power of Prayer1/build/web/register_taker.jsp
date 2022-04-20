<%-- 
    Document   : register_taker
    Created on : Oct 3, 2021, 11:11:41 AM
    Author     : SANIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">

        <title>Register_taker</title>
    </head>
    <style>
	body{
		background-color: #f2fcf9;
		padding: 0px !important;
    margin: 0px !important;
    font-family: font-family:'Montserrat', sans-serif;
	}
	header{
		height: 200px;
	}
	.main_heading{
		color: #1b4367;
		font-family: font-family:'Montserrat', sans-serif;
		font-size: 25px;
		font-weight: bold;
		margin-left: 2%;
		/*max-width: 175px;*/
	}
	.main_head2{
		color: #1b4367;
		font-family: font-family:'Montserrat', sans-serif;
		font-size: 20px;
		font-weight: bold;
		text-align: right;
		margin-left: 60%;		
	}
	p{
		display: inline-block;
	}

	
	.bgpic{
		margin-top: -8%;
		height:362px;
		width:100%;
		object-fit: cover;
		filter: brightness(50%);
	}
	.input_data{
		font-weight: bold;
		font-size: 18px;
		background-color: white;
		padding: 50px 45px 0px 9px;		
		max-width: 54rem;
		max-height: 57rem;
		margin-left: 16%;
		border-radius: 3%;
		box-shadow: rgba(136, 165, 191, 0.48) 6px 2px 16px 0px, rgba(255, 255, 255, 0.8) -6px -2px 16px 0px;
	}
	input{
		border: 1px solid #ccc;
	  	border-radius: 6px;
	  	padding: 12px 20px;
	  	margin-left: -32%;
	  	background-color: white;

	}
	.gendercss{
		border: 1px solid #ccc;
	  	border-radius: 6px;
	  	padding: 8px 15px;
	  }
	.name{
		margin-left: 25%;
	}
	.age{
		margin-left: 25%;
	}
	.gender{
		margin-left: 17%;
	}
	.date{
		margin-left: 25%;
	}
	.days{
		margin-left: 25%;
	}
	.time{
		margin-left: 25%;
	}
	.people{
		margin-left: 25%;
	}
	.location{
		margin-left: 25%;
	}
	.purpose{
		margin-left: 23%;
	}
	.email{
		margin-left: 25%;
	}
	.password{
		margin-left: 25%;
	}
	.profile_picture{
		margin-left: 25%;
	}
        .status{
            margin-left:6%;
        }
	.purposecss{
		width: 100%;
	}
	.button-29 {
	  align-items: center;
	  appearance: none;
	  background-image: radial-gradient(100% 100% at 100% 0, #5adaff 0, #5468ff 100%);
	  border: 0;
	  border-radius: 6px;
	  box-shadow: rgba(45, 35, 66, .4) 0 2px 4px,rgba(45, 35, 66, .3) 0 7px 13px -3px,rgba(58, 65, 111, .5) 0 -3px 0 inset;
	  box-sizing: border-box;
	  color: #fff;
	  cursor: pointer;
	  display: inline-flex;
	  font-family:'Montserrat', sans-serif;
	  height: 48px;
	  justify-content: center;
	  line-height: 1;
	  list-style: none;
	  overflow: hidden;
	  padding-left: 16px;
	  padding-right: 16px;
	  position: relative;
	  text-align: left;
	  text-decoration: none;
	  transition: box-shadow .15s,transform .15s;
	  user-select: none;
	  -webkit-user-select: none;
	  touch-action: manipulation;
	  white-space: nowrap;
	  will-change: box-shadow,transform;
	  font-size: 18px;
	  margin-left: 47%;
	}

	.button-29:focus {
	  box-shadow: #3c4fe0 0 0 0 1.5px inset, rgba(45, 35, 66, .4) 0 2px 4px, rgba(45, 35, 66, .3) 0 7px 13px -3px, #3c4fe0 0 -3px 0 inset;
	}

	.button-29:hover {
	  box-shadow: rgba(45, 35, 66, .4) 0 4px 8px, rgba(45, 35, 66, .3) 0 7px 13px -3px, #3c4fe0 0 -3px 0 inset;
	  transform: translateY(-2px);
	}

	.button-29:active {
	  box-shadow: #3c4fe0 0 3px 7px inset;
	  transform: translateY(2px);
	}
	.title{
		color: white;
		font-family: 'Montserrat', sans-serif;
		font-size: 56px;
		font-weight: bold;
		position: absolute;
		top: 21%;
		left: 26%;
		display: inline-block;
		line-height: 135px;
		text-align: center;
		text-shadow: 2px 2px 5px #868e32;
	}
        .link{
            font-size: 17px;
            margin-left: 45%;
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
	<div class="inner_block">
		<img class="bgpic" src="taker_img.jpg">
		<p class="title">Register as Prayer Taker</p>
	</div>
    <form action="RegisterServ_taker1" method="post" >
		<div class="input_data">
			<p class="input name">Name
				<br><br>
                                <input type="text" name="name" placeholder="Full Name" required>
			</p>
			<p class="input email">Email
				<br><br>
				<input type="email" name="email" placeholder="Email" required>
			</p><br>
			<p class="input password">Password
				<br><br>
				<input type="password" name="password" placeholder="Password" required>
			</p>
			<p class="input age">Age
				<br><br>
				<input type="number" name="age" placeholder="Age" required>
			</p>
			<p class="input date">Date`
				<br><br>
				<input type="date" name="date" placeholder="Date" required>
			</p>
			<p class="input time">Time
				<br><br>
				<input type="time" name="time" placeholder="Time" required>
			</p>
			<p class="input days">Days
				<br><br>
				<input type="number" name="days" placeholder="Days" required>
			</p>
			<p class="input people">No. of People
				<br><br>
				<input type="number" name="people"placeholder="People" required>
			</p>
			<p class="input location">Location
				<br><br>
				<input type="text" name="location"placeholder="Location" required>
			</p>
			<p class="input gender">Gender
				<br><br>
				  <select class="gendercss" name="gender" required>
				    <option value="Male">Male</option>
				    <option value="Female">Female</option>
				  </select>
			</p>
			
                        <p class="input status">Status
				<br><br>
				<input class="status" type="text" name="status" placeholder="Status" required>
                        </p>
			<p class="input purpose">Purpose
				<br><br>
			
                        
                        
                                                
                        <button class="button-29" role="button">Submit</button>
                        <br>
                        <a class="link" href="login_taker.jsp">Already have an Account</a>
                      </div>
	</form>
	
</div>
</body>
</html>
