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
public class ForgetPID_DAO {

   public static ResultSet getPID(Patient_Reg p){
       
       ResultSet rs=null;
       try {
           Connection con=ConnectDemo.shareConnection();
           String Query="select * from patient where Pname='"+p.getPname()+"'";
           Statement st=con.createStatement();
           rs=st.executeQuery(Query);
       } catch (Exception e) {
           System.err.println("Sorry! something sql exception "+e);
       }
       return rs;
   } 
}
