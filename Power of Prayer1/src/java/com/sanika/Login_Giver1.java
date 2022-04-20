/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.sanika;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SANIKA
 */
public class Login_Giver1 extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       String name=request.getParameter("name");
     //  String email=request.getParameter("email");
      // String password=request.getParameter("pssword");
       
       
      // PrintWriter out=response.getWriter();
      Logincheck x=new Logincheck();
       
       if(x.check(name)){
           HttpSession session=request.getSession();
           session.setAttribute("name", name);
          
            response.sendRedirect("Profile_card_giver.jsp");
               
               
               }else{
       
             response.sendRedirect("login_giver.jsp");
               }
      
       
}

    
}
