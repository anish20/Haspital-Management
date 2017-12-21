/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnection;
import java.sql.*;

/**
 *
 * @author ANISH
 */
public class ConnectDemo {
    /*
    Static member declared..
    */
  public static String Drivername="com.mysql.jdbc.Driver";
  public static String ConUrl="jdbc:mysql://localhost:3306/hospital_management";
  public static String Username="root";
  public static String Password="root";
   
   /*
   Static block is used for initializing the static variables.
   This block gets executed when the class is loaded in the memory.
   */
   static{
       try {
           Class.forName(Drivername);
           System.out.println("Driver Loaded Successfully..");
       } catch (Exception e) {
           System.err.println("Sorry Driver Loading Exception"+e);
       }
   }
   
   /*
   connecton creation step
   */
   
   public static Connection shareConnection(){
     Connection con=null;
       try {
           con=DriverManager.getConnection(ConUrl,Username, Password);
           //con=DriverManager.getConnection(ConUrl,Username,Password);
           System.err.println("Connection Created..");
       } catch (Exception e) {
           System.err.println("Connection Exception"+e);
       }
       return con;
   }
   /* public static void main(String[] args) {
        shareConnection();
    }*/
}
