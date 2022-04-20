/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.sanika;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SANIKA
 */
public class Register_giver extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response, String picture)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String name=request.getParameter("name");
		String contact=request.getParameter("contact");
		String email= request.getParameter("email");
		String password=request.getParameter("password");
		String location=request.getParameter("location");
              // File f = new File(picture);
		PrintWriter out=response.getWriter();
              //  out.println(name);
                
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
                         Connection con=DriverManager.getConnection("jdbc:mysql:// localhost:3306/giverdb","root","sanika35");
                         // int row = 0;
                         out.println("Data entered sucessfully");
			//PreparedStatement preparedStatement;
                      Statement st=con.createStatement();
	                st.executeUpdate("insert into user(name,contact,email,password,location) values('"+ name +"','"+ contact +"','"+ email +"','"+ password +"','"+ location +"')");
	                
                         
                 }
		catch(Exception e) {
			out.println("Data not entered");
			
		}
                
    }
}
                
                
                
                   

        
        
    

    