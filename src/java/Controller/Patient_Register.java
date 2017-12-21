/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.Patient_Reg;
import java.sql.*;
import DAO.Patient_DAO;
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
 * @author ANISH
 */
public class Patient_Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw =response.getWriter();
         Patient_Reg p=new Patient_Reg();
          try {
             
            String button=request.getParameter("btn");
             String pid;
          String pname;
            if(button.equals("Sign Up")){
                pid=request.getParameter("pid");
                p.setPid(pid);
                pname=request.getParameter("pname");
                p.setPname(pname);
                p.setEmail(request.getParameter("email"));
                p.setPassword(request.getParameter("pass"));
                p.setContact(request.getParameter("contact"));
                p.setDob(request.getParameter("dob"));
                p.setGender(request.getParameter("gender"));
                p.setAge(request.getParameter("age"));
                p.setM_status(request.getParameter("status"));
                p.setAdd(request.getParameter("address"));
                p.setDisease(request.getParameter("disease"));
                p.setRoom_type(request.getParameter("room"));
               int result=Patient_DAO.patientRegister(p);
               if(result>0){
                   response.sendRedirect("Patient_Home.jsp");
               }else{
                   pw.print("Sorry Something went wrong..");
               }
            HttpSession session=request.getSession();
            session.setAttribute("PID", pid);
            session.setAttribute("PNAME", pname);
            }if(button.equals("Login")) {
               pid=request.getParameter("pid");
                p.setPid(pid);
                pname=request.getParameter("pname");
                p.setPname(pname);
                p.setPassword(request.getParameter("password"));
                ResultSet valid=Patient_DAO.patientLogin(p);
                if(valid.next()){
                   response.sendRedirect("Patient_Home.jsp");
                   System.err.println("Data matched");
            
                }else{
                     
                     
                     //String ms="Sorry! Input Data Invalid";
                     p.setMessage("Sorry! Input Data Invalid");
                     request.setAttribute("M", p.getMessage());
                     request.getRequestDispatcher("index.jsp").forward(request, response);
                     System.err.println("Data not matched");
                }
                HttpSession session=request.getSession();
            session.setAttribute("PID", pid);
            session.setAttribute("PNAME", pname);
            }
            } catch (Exception e) {
            System.err.println(e);
        }
    }
}
