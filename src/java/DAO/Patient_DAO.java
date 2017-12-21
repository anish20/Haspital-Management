/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import Beans.Patient_Reg;
import DBConnection.ConnectDemo;
import java.sql.*;
import java.util.Date;
import java.text.SimpleDateFormat;
/**
 *
 * @author ANISH
 */
public class Patient_DAO {
    
    public static int patientRegister(Patient_Reg p){
        int res=0;
        try {
           Date d=new Date();
           SimpleDateFormat s = new SimpleDateFormat();
           String date = s.format(d);
           Connection con=DBConnection.ConnectDemo.shareConnection();
           //String Query="insert into patient values('"+p.getPid()+"','"+p.getPname()+"','"+p.getEmail()+"','"+p.getPassword()+"','"+p.getContact()+"','"+p.getDob()+"','"+p.getGender()+"','"+p.getAge()+"','"+p.getM_status()+"','"+p.getAdd()+"','"+p.getDisease()+"','"+p.getRoom_type()+"','"+date+"'";
           String Query="insert into patient values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
           PreparedStatement ps=con.prepareStatement(Query);
           ps.setString(1, p.getPid());
           ps.setString(2, p.getPname());
           ps.setString(3, p.getEmail());
           ps.setString(4, p.getPassword());
           ps.setString(5, p.getContact());
           ps.setString(6, p.getDob());
           ps.setString(7, p.getGender());
           ps.setString(8, p.getAge());
           ps.setString(9, p.getM_status());
           ps.setString(10, p.getAdd());
           ps.setString(11, p.getDisease());
           ps.setString(12, p.getRoom_type());
           ps.setString(13, date);
           res=ps.executeUpdate();
           if(res>0){
               System.err.println("Data Inserted Suceessfully...");
           }else{
               System.err.println("Sorry not Inserted...");
           }
        
        } catch (Exception e) {
            System.err.println("Sorry somenthing wrong.."+e);
        }
        return res;
    }
    
    public static ResultSet patientLogin(Patient_Reg p){
        ResultSet rs=null;
        try {
            Connection con=ConnectDemo.shareConnection();
            String Query="select * from patient where Pname='"+p.getPname()+"' AND Pid='"+p.getPid()+"' AND Pass='"+p.getPassword()+"' ";
            Statement st=con.createStatement();
             rs=st.executeQuery(Query); 
        } catch (Exception e) {
            System.err.println("Sorry"+e);
        }
        return rs;
    }
}
