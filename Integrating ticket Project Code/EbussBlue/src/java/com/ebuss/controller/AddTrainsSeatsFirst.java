/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ebuss.controller;

import com.utils.InsertTrainRoots;
import com.utils.UpdateTrainSeatStatus;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ramu
 */
public class AddTrainsSeatsFirst extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String cdate = request.getParameter("cdate").trim();
        String trainno    = request.getParameter("trainno").trim();
        String trainname  = request.getParameter("trainname").trim();
        String sourcecity  = request.getParameter("sourcecity").trim();
        String destinationcity  = request.getParameter("destinationcity").trim();
        String distance  = request.getParameter("distance").trim();
        float dist = Float.parseFloat(distance);
        String cost  = request.getParameter("cost").trim();
        float cost1 = Float.parseFloat(cost);
        String totalSeat  = request.getParameter("totalSeat").trim();
        int tSeats = Integer.parseInt(totalSeat);
        String availableSeat  = request.getParameter("availableSeat").trim();
        int aSeats = Integer.parseInt(availableSeat);
        
        InsertTrainRoots itr = new InsertTrainRoots();
        try{
        int no =itr.addTrainRoots(cdate, trainno, trainname, sourcecity, destinationcity, dist, cost1, tSeats, aSeats);
        if(no>0){
        UpdateTrainSeatStatus utss = new UpdateTrainSeatStatus();
        String msg = utss.updateSeat(trainno, trainname);
        response.sendRedirect("AddSeat.jsp?msg="+msg);
        }
        
        }catch(Exception e){
            System.out.println("Error seats:"+e.getMessage());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
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
     * Handles the HTTP
     * <code>POST</code> method.
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
