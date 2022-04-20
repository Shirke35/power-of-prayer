<%-- 
    Document   : dashboard
    Created on : Sep 29, 2021, 9:05:13 PM
    Author     : SANIKA
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
   	<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
	<title>Template 2</title>
</head>
<style>
	body{
		background-color: #f2fcf9;
		padding: 0px !important;
    margin: 0px !important;
	}
	header{
		height: 200px;
	}
	.main_heading{
		color: #1b4367;
		font-family: 'Montserrat', sans-serif;
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
		color: #ffffff;
                font-family: 'Montserrat', sans-serif;
                    font-size: 66px;
		font-weight: bold;
		position: absolute;
		top: 21%;
		left: 33%;
		display: inline-block;
                text-shadow: 2px 4px 5px #070809;
	}
	.quote{
		color: #ffffff;
		font-family: 'Montserrat', sans-serif;
		font-size: 26px;
		font-weight: bold;
		position: absolute;
		top: 42%;
		left: 31.2%;
		display: inline-block;
                text-shadow: 2px 4px 5px #070809;
	}
	.bgpic{
		margin-top: -9%;
		height:auto%;
		width:100%;

	}
	.button-65 {
	  appearance: none;
	  backface-visibility: hidden;
	  background-color: #1b4367;
	  border-radius: 10px;
	  border-style: none;
	  box-shadow: none;
	  box-sizing: border-box;
	  color: #fff;
	  cursor: pointer;
	  display: inline-block;
	  font-family: 'Montserrat', sans-serif;
	  font-size: 15px;
	  font-weight: 500;
	  height: 50px;
	  letter-spacing: normal;
	  line-height: 1.5;
	  outline: none;
	  overflow: hidden;
	  padding: 14px 30px;
	  text-align: center;
	  text-decoration: none;
	  transform: translate3d(0, 0, 0);
	  transition: all .3s;
	  user-select: none;
	  -webkit-user-select: none;
	  touch-action: manipulation;
	  vertical-align: top;
	  white-space: nowrap;
	  margin-top: -36%;
	  margin-left: 33%;
	}
	.button-65:hover {
	  background-color: #1366d6;
	  box-shadow: rgba(0, 0, 0, .05) 0 5px 30px, rgba(0, 0, 0, .05) 0 1px 4px;
	  opacity: 1;
	  transform: translateY(0);
	  transition-duration: .35s;
	}
	.button-65:hover:after {
	  opacity: .5;
	}
	.button-65:active {
	  box-shadow: rgba(0, 0, 0, .1) 0 3px 6px 0, rgba(0, 0, 0, .1) 0 0 10px 0, rgba(0, 0, 0, .1) 0 1px 4px -1px;
	  transform: translateY(2px);
	  transition-duration: .35s;
	}
	.button-65:active:after {
	  opacity: 1;
	}
	.button-70 {
	  background-color: #1b4367;
	  border: 0;
	  border-radius: 4px;
	  box-shadow: rgba(0, 0, 0, .3) 0 5px 15px;
	  box-sizing: border-box;
	  color: #fff;
	  cursor: pointer;
	  font-family: 'Montserrat', sans-serif;
	  font-size: .9em;
	  margin: 5px;
	  padding: 10px 15px;
	  text-align: center;
	  user-select: none;
	  -webkit-user-select: none;
	  touch-action: manipulation;
	}
	.two{
		margin-left: 55%;
		margin-top: -37.2%;
	}
	.card {
	  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
	  transition: 0.3s;
	  width: 20%;
	}

	.card:hover {
	  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
	}

	.container {
	  padding: 2px 16px;
	}
	.blk1{
		margin-left: 11%;
	}
	.blk2{
		margin-left: 40.3%;
		margin-top: -33.3%;
	}
	.blk3{
		margin-left: 69%;
		margin-top: -33.15%;
	}
	.but1{
		margin-top: 4%;
		margin-left: 8%;
	}

@media only screen and (max-width: 800px){
    .bgpic{
	    width: 340px;
	    height: 400px;
	}
	.main_head2{
		width: auto;
		height: auto;
		display: inline-block;
		font-size: 16px;
	}
	.sub_heading{
		font-size: 33px;
		top: 25%;
		left: 18%;
	}
}
@media (min-width: 768px) {
  .button-65 {
    padding: 14px 22px;
    width: 176px;
  }
}
@media (min-width: 768px) {
  .button-65-2 {
    padding: 14px 22px;
    width: 176px;
  }
}

</style>

<body>
	<header>
		<p class="main_heading">Power of Prayer</p>
		
		<p class="main_head2"><img src="https://img.icons8.com/color/30/000000/welfare.png"/>Prayer Giver &nbsp &nbsp &nbsp &nbsp <img src="https://img.icons8.com/external-wanicon-lineal-color-wanicon/30/000000/external-hand-love-wanicon-lineal-color-wanicon.png"/>Prayer Taker</p>
	</header>
	<div class="inner_block">
		<img class="bgpic" src="bgpic2.jpg">
		<p class="sub_heading">Power of Prayer</p>
		<p class="quote">A day without prayer is a day without blessing,<br>and a life without prayer is a life without power.</p>
                <a href="logindashboard_giver.jsp">
                <button class="button-65" role="button"> Prayer Giver</button>
                </a>
                <a href="Logindashboard_taker.jsp">
                <button class="button-65 two" role="button">Prayer Taker</button>
                </a>
	</div>
    <%
    try{
    
        Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/giverdb","root","sanika35");
                                 Statement st=con.createStatement();
	               ResultSet rs= st.executeQuery("SELECT * FROM sample where id=1;");
                      while(rs.next()){%>
	<div class="card blk1">
		  <img src="img_avatar.png" alt="Avatar" style="width:100%">
			<div class="container">
                            <h4><b>Name:<%out.print(rs.getString(2));%>
                                </b></h4>
			    <h4><b>Age: <%out.print(rs.getString(5));%>
                                </b></h4>
			    <h4><b>Status: <%out.print(rs.getString(12));%>
                                </b></h4> 
			    <button class="button-70 but1" role="button">Give Prayer</button>
  			</div>
  	</div>
                                
                          
                            <%
              }
                      
             } catch(Exception ex) {
            ex.printStackTrace();
                  
        
        }
            %>
            
            
            <!--blk2 -->
    
    <%
    try{
    
        Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/giverdb","root","sanika35");
                                 Statement st=con.createStatement();
	               ResultSet rs= st.executeQuery("SELECT * FROM sample where id=2;");
                      while(rs.next()){%>
	<div class="card blk2">
		  <img src="img_avatar.png" alt="Avatar" style="width:100%">
			<div class="container">
                            <h4><b>Name:<%out.print(rs.getString(2));%>
                                </b></h4>
			    <h4><b>Age: <%out.print(rs.getString(5));%>
                                </b></h4>
			    <h4><b>Status: <%out.print(rs.getString(12));%>
                                </b></h4> 
			    <button class="button-70 but1" role="button">Give Prayer</button>
  			</div>
  	</div>
                                
                          
                            <%
              }
                      
             } catch(Exception ex) {
            ex.printStackTrace();
                  
        
        }
            %>
            <!-- blk3 -->
            
            <%
    try{
    
        Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/giverdb","root","sanika35");
                                 Statement st=con.createStatement();
	               ResultSet rs= st.executeQuery("SELECT * FROM sample where id=3;");
                      while(rs.next()){%>
	<div class="card blk3">
		  <img src="img_avatar.png" alt="Avatar" style="width:100%">
			<div class="container">
                            <h4><b>Name:<%out.print(rs.getString(2));%>
                                </b></h4>
			    <h4><b>Age: <%out.print(rs.getString(5));%>
                                </b></h4>
			    <h4><b>Status: <%out.print(rs.getString(12));%>
                                </b></h4> 
			    <button class="button-70 but1" role="button">Give Prayer</button>
  			</div>
  	</div>
                                
                          
                            <%
              }
                      
             } catch(Exception ex) {
            ex.printStackTrace();
                  
        
        }
            %>
            
  	
</div>
</body>
</html>