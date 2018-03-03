/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ebuss.commons;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 *
 * @author Tanish
 */
public class StudentRegisterController extends HttpServlet {
   
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

        StudentRegisterBeans srb = new StudentRegisterBeans();
        srb.setSid(request.getParameter("sid"));
        srb.setName(request.getParameter("sname"));
        srb.setLoginid(request.getParameter("loginid"));
        srb.setPwd(request.getParameter("password"));
        srb.setCollegeName(request.getParameter("collegename"));
        srb.setAddress(request.getParameter("address"));
        srb.setUniversity(request.getParameter("university"));
        srb.setCity(request.getParameter("city"));
        srb.setState(request.getParameter("state"));
        srb.setZipcode(request.getParameter("zip"));
        srb.setHallticket(request.getParameter("hallticket"));
        srb.setSunique(request.getParameter("sunique"));
        srb.setEmail(request.getParameter("email"));
        srb.setMobile(request.getParameter("mobile"));
        String rdate = request.getParameter("rdate");

        SimpleDateFormat dateFormat = new SimpleDateFormat("yy-MM-dd");

        java.sql.Date currentDate=null;
        try{
        currentDate =new java.sql.Date(dateFormat.parse(rdate).getTime());
        }catch(Exception e){}
        srb.setDate(currentDate);
        srb.setRole(request.getParameter("role"));

        RegisterDAO rdao = new RegisterDAO();
        String msg = rdao.studentRegister(srb);
        response.sendRedirect("CustomerHome.jsp?msg="+msg);
        

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
