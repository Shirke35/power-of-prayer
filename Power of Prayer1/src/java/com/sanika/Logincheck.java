/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.sanika;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author SANIKA
 */
public class Logincheck {
    
    public boolean check(String name) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/giverdb","root","sanika35");
             
		      PreparedStatement ps=con.prepareStatement(  "select * from user where name=? ");  
                      ps.setString(1,name);
                      
		      ResultSet rs =ps.executeQuery();
                      if(rs.next()){
                          return true;
                      }
                      
             } catch(Exception ex) {
            ex.printStackTrace();
                  
        
        }
        return false;
        
        
    
    }

    public boolean fetech() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/giverdb","root","sanika35");
             
		      PreparedStatement ps=con.prepareStatement( "select * from sample ");  
                     
		      ResultSet rs =ps.executeQuery();
                      while(rs.next()){
                          return true;
                      }
                      
             } catch(Exception ex) {
            ex.printStackTrace();
                  
        
        }
        return false;
        
        
    
    }

 
    }

   
    

  

    
    


