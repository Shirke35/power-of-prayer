<%-- 
    Document   : Profile_card_taker
    Created on : Oct 5, 2021, 6:22:58 PM
    Author     : SANIKA
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
              <meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
              <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
  

        <title>Profile Card</title>
    </head>
    <body>
        <style>
            body{
		background-color: #f1eeee;
		padding: 0px !important;
	    margin: 0px !important;
	   font-family: 'Montserrat', sans-serif;
	    background-color: #0a3c6d;
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
	.side_nav{
		max-width: 250px;
		max-height: 100%;
		
	}
	.profilepic{
		border-radius:50%;
		width: 50%;
		padding-left: 15%;
		margin-top:15% ;
	}
	.prayer{
		padding-left: 15%;
	}
	.setting{
		padding-left: 15%;
	}
	.logout{
		padding-left: 15%;
	}
	.nav_content{
		margin-top: 15%;
		color: white;
	}
	.title{
		font-size: 40px;
		font-weight: bold;
		color: white;
		margin-left: 27%;
		margin-top: -25%;
		max-width: 100px;
	}
	.block{
		width: 100px;
		height: 100px;
		margin-left: 16.9%;
		margin-top: -2%;
	}
	.profile_card{
		background-color: white;
		width: 1036px;
		margin-left: 57%;
		height: 578px;
		margin-top: -6%;
		padding: 70px 0px 0px 0px;
	}
	.one{
		background-color: #f1eeee;
		width: 70%;
		margin-left: 10%;
		height: 258px;
                margin-bottom: 1%;
		box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 1px 3px 1px;
	}
	.two{
		background-color: #f1eeee;
		width: 70%;
		margin-left: 10%;
		height: 258px;
		margin-top: 1%;
		box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 1px 3px 1px;
	}
	.inner_profilepic{
		width: 10%;
		padding-left: 5%;
		margin-top:4% ;
	}
	.text{
		padding-left: 5%;
		font-size: 15px;
		font-weight: bold;
	}
	.button-15 {
	  background-image: linear-gradient(#42A1EC, #0070C9);
	  border: 1px solid #0077CC;
	  border-radius: 4px;
	  box-sizing: border-box;
	  color: #FFFFFF;
	  cursor: pointer;
	  direction: ltr;
	  display: block;
	 font-family: 'Montserrat', sans-serif;
	  font-size: 17px;
	  font-weight: 400;
	  letter-spacing: -.022em;
	  line-height: 1.47059;
	  min-width: 30px;
	  overflow: visible;
	  padding: 4px 15px;
	  text-align: center;
	  vertical-align: baseline;
	  user-select: none;
	  -webkit-user-select: none;
	  touch-action: manipulation;
	  white-space: nowrap;
	  margin-left: 45%;
	}

	.button-15:disabled {
	  cursor: default;
	  opacity: .3;
	}

	.button-15:hover {
	  background-image: linear-gradient(#51A9EE, #147BCD);
	  border-color: #1482D0;
	  text-decoration: none;
	}

	.button-15:active {
	  background-image: linear-gradient(#3D94D9, #0067B9);
	  border-color: #006DBC;
	  outline: none;
	}

	.button-15:focus {
	  box-shadow: rgba(131, 192, 253, 0.5) 0 0 0 3px;
	  outline: none;
	}
	.main_title{
		font-size: 30px;
		font-weight: bold;
		margin-left: 11%;
		margin-top: -2%;
	}
            
            
        </style>
        


        <%
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    if(session.getAttribute("name" )==null) {
    response.sendRedirect("login_giver.jsp");
    }
%>

<!-- Main Html part --> 

    
    <div class="side_nav">
		<img class="profilepic" src="img_avatar.png" alt="Avatar">
		<br>
		<hr style="border-width: 2px;">
		<div class="nav_content">
			<p class="prayer">
				Prayer
			</p><br>
                        
			<p class="setting">
				Setting
			</p><br>
			<p class="logout">
				Logout
			</p>
		</div>		
	</div>
	<div class="title">
		<p> Hello,${name}</p>
	</div>
	<div class="block">

		<div class="profile_card">
                    <p class="main_title"> Prayer Today</p>
			<%
                          
                        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/giverdb","root","sanika35");
             
		     // PreparedStatement ps=con.prepareStatement( "select * from sample ");  
                     Statement st=con.createStatement();
	               ResultSet rs= st.executeQuery("SELECT * FROM sample ");
                      while(rs.next()){
                        %>
                        <div class="inner_block one">
				<img class="inner_profilepic" src="img_avatar.png" alt="Avatar">
				<br>
                                <p class="text">
                                    <% out.print(rs.getString(2)); %>
                                </p>
				
                                <p class="text">
                                    <% out.print(rs.getString(5)); %>
                                </p>
                                
				<button class="button-15" role="button">Prayer</button>
			</div>
                        
                        <%
                      }
                      
             } catch(Exception ex) {
            ex.printStackTrace();
                  
        
        }
                        %>
			
                                
                                
                                
                                
                                
                                
			

			
		</div>
	</div>
    </body>     

    
</html>
