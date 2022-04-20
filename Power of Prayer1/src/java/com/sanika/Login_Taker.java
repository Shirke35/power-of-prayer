/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.sanika;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SANIKA
 */
public class Login_Taker extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String  name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		PrintWriter out=response.getWriter();
		
		
	try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
		       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takerdb","root","sanika35");
		      
		      String query="select * from  demo where  name='" + name +"' , email='" + email  +"', password='" + password +"'  ";
		      Statement stmt=con.createStatement();
		      ResultSet rs =stmt.executeQuery(query);
		      if(rs.next()) {
		    	   // HttpSession session=request.getSession();
                            //session.setAttribute("name1", name1);
                            // response.sendRedirect("Profile_card_giver.jsp");
                            out.println("Login sucessfully!");
          
		      }
		      else {
                         // response.sendRedirect("Login_taker.jsp");
                          out.println("Login Failed!");
          
		    	  
		      }
		      
		}
			
		
		catch(Exception ex) {
			out.println(ex);

		}
		
	}
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    