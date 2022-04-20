package com.sanika;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author SANIKA
 */
public class Registertaker extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    //private String dburl = "jdbc:mysql://localhost:3306/giverdb";
   // private String dbuser = "root";
    //private String dbpass = "sanika35";
    
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String name=request.getParameter("name");
		String email= request.getParameter("email");
		String password=request.getParameter("password");
                String age=request.getParameter("age");
		String date=request.getParameter("date");
		String time= request.getParameter("time");
		String days=request.getParameter("days");
		String people=request.getParameter("people");
		String purpose =request.getParameter("purpose");
                String location=request.getParameter("location");
                String status =request.getParameter("status");
                String gender=request.getParameter("gender");
                 // Obtains the upload file
        // part in this multipart request
     //Part filePart = request.getPart("photo");
     //InputStream file = null; // input stream of the upload file
     
                
               PrintWriter out=response.getWriter();
               
                   // String message = null;
     
        // obtains the upload file part in this multipart request
      // Part filePart = request.getPart("photo");
        /*if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
           System.out.println(filePart.getSize());
           System.out.println(filePart.getContentType());

            // obtains input stream of the upload file
    //  inputStream = filePart.getInputStream();
        }
      */
        
        
     // InputStream file = inputStream;   
      //InputStream fileno = null ;
       // Connection conn = null; // connection to the database
        //String message = null;  // message will be sent back to client
         
                try{
                    
                     //  DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                     Class.forName("com.mysql.cj.jdbc.Driver");
		       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/giverdb","root", "sanika35");
                       //int row;
                       
                      Statement st=con.createStatement();
	                st.executeUpdate("insert into sample(name,email,password,age,date,time,days,people,purpose,location,status,gender) values('"+ name +"','"+ email +"','"+ password +"','"+ age +"','"+ date +"','"+ time +"','"+ days +"','"+ people +"','"+ purpose +"','"+ location +"','"+ status +"','"+ gender +"')");
                       out.println("Data entered sucessfully");
                       //String sql="insert into sample(name,email,password,age,date,time,days,people,purpose,location,status,gender,photo) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    /* PreparedStatement ps=con.prepareStatement(sql);
                         ps .setString(1, name);
                         ps.setString(2, email);
                        ps.setString(3, password);
                         ps.setString(4, age);
                          ps.setString(5, date);
                           ps.setString(6, time);
                            ps.setString(7, days);
                             ps.setString(8, people);
                               ps.setString(9, purpose);
                                ps.setString(10, location);
                                 ps.setString(11, status);
                                 ps.setString(12, gender);
                       */
                             //    ps.setBlob(13, fileno);
                                 //if (file  != null){
                                     //ps.setBlob(13, file );
                               // }
                               //int  row = ps.executeUpdate();
                                 
           /*  if (filePart != null) {
  
            // Prints out some information
            // for debugging
            System.out.println(
                filePart.getName());
            System.out.println(
                filePart.getSize());
            System.out.println(
                filePart.getContentType());
  
            // Obtains input stream of the upload file
            inputStream= filePart.getInputStream();
        }*/
                             /*  if (row > 0) {
           
          message = "File uploaded and saved into database";
           
       }*/
        
     }      catch(Exception ex) {
                out.println("Data not entered");
            }
       /* catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        }*//*finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
             
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
                
                
  */

        }

                
}

