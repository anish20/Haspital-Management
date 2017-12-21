/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import java.sql.*;
import Beans.Patient_Reg;
import DAO.ForgetPass_DAO;
import DBConnection.ConnectDemo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ANISH
 */
public class ForgetPass extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw=response.getWriter();
        try {
            Patient_Reg p=new Patient_Reg();
            p.setPname(request.getParameter("Pname"));
            p.setEmail(request.getParameter("Pemail"));
            ResultSet validdate=ForgetPass_DAO.getPassword(p);
            if(validdate.next()){
                Connection con=ConnectDemo.shareConnection();
                String Query="select Pass from patient ";
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery(Query);
                if(rs.next()){
                    String pass=rs.getString("Pass");
                     request.setAttribute("Ps", pass);
                     request.getRequestDispatcher("Patient_ForgetPass.jsp").forward(request, response);
                     
                }
                System.err.println("data match");
            }else{
                p.setMessage("Sorry! your input data is Incorrect");
                request.setAttribute("ms1", p.getMessage());
                request.getRequestDispatcher("Patient_ForgetPass.jsp").forward(request, response);
                System.err.println("data not match");
            }
        } catch (Exception e) {
            System.err.println("Something went wrong.."+e);
        }
    
    
    }
}