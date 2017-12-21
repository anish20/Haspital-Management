/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import Beans.Patient_Reg;
import DBConnection.ConnectDemo;
import java.sql.*;
/**
 *
 * @author ANISH
 */
public class ForgetPass_DAO {
   public static ResultSet getPassword(Patient_Reg p){
       ResultSet rs=null;
       try {
         Connection con= ConnectDemo.shareConnection();
         String Query="select * from patient where Pname='"+p.getPname()+"' AND Email='"+p.getEmail()+"'";
         Statement st=con.createStatement();
         rs=st.executeQuery(Query);
         
       } catch (Exception e) {
           System.err.println("Sorry Something went throw the exception"+e);
       }
       return rs;
   }
    
}
