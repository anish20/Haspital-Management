/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.Patient_Reg;
import DAO.ForgetPID_DAO;
import DBConnection.ConnectDemo;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ANISH
 */
public class ForgetPID extends HttpServlet {

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
        String button=request.getParameter("btn");
        if (button.equals("Get PID")) {
           Patient_Reg p=new Patient_Reg();
            try {
                p.setPname(request.getParameter("pname"));
                ResultSet validate=ForgetPID_DAO.getPID(p);
                if (validate.next()) {
                    Connection con=ConnectDemo.shareConnection();
                    String Query="select Pid from patient where Pname='"+p.getPname()+"'";
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery(Query);
                    if(rs.next()){
                        String msg=rs.getString("Pid");
                        request.setAttribute("PID", msg);
                        request.getRequestDispatcher("Forget_PID.jsp").forward(request, response);
                    }
                }else{
                    p.setMessage("Sorry! Your name is incorrect..");
                    request.setAttribute("ms", p.getMessage());
                    request.getRequestDispatcher("Forget_PID.jsp").forward(request, response);
                }
            } catch (Exception e) {
            }
        }
       
    }
}