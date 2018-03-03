/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ebuss.commons;

import com.ebuss.db.DBConnection;
import java.sql.PreparedStatement;

/**
 *
 * @author Ramu
 */
public class BusSeatConfirmation {
    public void allocateBusSeat(String serviceNumber,int seatnumber,java.sql.Date dateofjopurney,int ticketnumber){
    PreparedStatement ps = null;
    String upadteQuery = "update bussticketsingleperson set seatnumber=? where service_name=? and dateof_journey=? and ticketnumber=?";
    try{
    ps = DBConnection.getDBConnection(upadteQuery);
    ps.setInt(1, seatnumber);
    ps.setString(2, serviceNumber);
    ps.setDate(3, dateofjopurney);
    ps.setInt(4, ticketnumber);
    ps.executeUpdate();
    }catch(Exception e){
        System.out.println("Update Seat:"+e.getMessage());
    }finally{
    try{
    
    }catch(Exception e){
    
    }
    }
    }

public void allocateBusMultiplrSeat(String serviceNumber,int seatnumber,java.sql.Date dateofjopurney,int ticketnumber){
PreparedStatement ps = null;
//StringBuffer seats =new StringBuffer();
//for(int i =0;i<=seatnumber;i++){

//}
    String upadteQuery = "update busticketmultipleusers set totalseats=? where service_name=? and dateof_journey=? and ticketnumber=?";
    try{
    ps = DBConnection.getDBConnection(upadteQuery);
    ps.setInt(1, seatnumber);
    ps.setString(2, serviceNumber);
    ps.setDate(3, dateofjopurney);
    ps.setInt(4, ticketnumber);
    ps.executeUpdate();
    }catch(Exception e){
        System.out.println("Update Seat:"+e.getMessage());
    }finally{
    try{
    
    }catch(Exception e){
    
    }
    }
}
}
