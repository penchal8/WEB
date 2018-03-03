/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ebuss.controller;

import com.ebuss.beans.AdminLoginBeans;
import com.ebuss.model.AdminModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tanish
 */
public class AdminLoginCheckController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       AdminLoginBeans alb = new AdminLoginBeans();
       alb.setUserName(request.getParameter("username"));
       alb.setPwd(request.getParameter("pwd"));
       AdminModel am = new AdminModel();
       String result=am.adminLoginCheck(alb);
       if(result.equals("valid")){
       RequestDispatcher rd = request.getRequestDispatcher("AdminHome.jsp?msg=Login Success");
       rd.forward(request, response);
       }
       else if(result.equals("invalid")){
       RequestDispatcher rd = request.getRequestDispatcher("AdminLogin.jsp?msg=invalid");
       rd.forward(request, response);
       }
       else{
       RequestDispatcher rd = request.getRequestDispatcher("AdminLogin.jsp?msg=invalid");
       rd.forward(request, response);
       }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
