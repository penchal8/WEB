/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ebuss.controller;

import com.ebuss.beans.AddingBussRoots;
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
public class AdminAddBussRootController extends HttpServlet {
   
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
        AddingBussRoots abr = new AddingBussRoots();
        abr.setSourcecity(request.getParameter("sourcestation"));
        abr.setSourcestate(request.getParameter("sourcestate"));
        abr.setDistance(Float.parseFloat(request.getParameter("distance")));
        abr.setDestinationcity(request.getParameter("destinationcity"));
        abr.setDestinationstate(request.getParameter("destinationstate"));
        abr.setCost(Float.parseFloat(request.getParameter("cost")));
        abr.setServiceno(request.getParameter("serviceno"));
        abr.setBusname(request.getParameter("busname"));
        
        AdminModel am = new AdminModel();
        String msg = am.adminAddBussRoots(abr);
        response.sendRedirect("AddBussRoots.jsp?msg="+msg);
       

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
