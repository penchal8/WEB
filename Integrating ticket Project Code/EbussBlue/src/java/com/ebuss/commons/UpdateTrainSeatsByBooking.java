/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ebuss.commons;

import com.ebuss.db.DBConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Ramu
 */
public class UpdateTrainSeatsByBooking {
  int no=0;
  int trainno=0;
  public int upadteSeats(String serviceNumber,int passngers,java.sql.Date dateofjopurney){
  String query = "select max(available) from trainseats where trainno=? and dates=?";
  PreparedStatement ps = null;
  PreparedStatement ps1= null;
  ResultSet rs =null;
  try{
  ps = DBConnection.getDBConnection(query);
  ps.setString(1, serviceNumber);
  ps.setDate(2, dateofjopurney);
  rs = ps.executeQuery();
  rs.next();
  no=rs.getInt(1);
      System.out.println("No Of Seats:"+no);
  if(no==0){
  return no;
  }
  else{
  int remainSeat = no-passngers;
  String upadteQuery = "update trainseats set available=? where trainno=? and dates=?";
  ps1 = DBConnection.getDBConnection(upadteQuery);
  ps1.setInt(1, remainSeat);
  ps1.setString(2, serviceNumber);
  ps1.setDate(3, dateofjopurney);
 int aa= ps1.executeUpdate();
      System.out.println("Remaining Seat:"+remainSeat);
 if(aa>0){
      return remainSeat;
 }else{
 return 0;
 }
  }
  }catch(Exception e){
      e.printStackTrace();
      System.out.println("Error at Updating Train Seats :"+e.getMessage());
  }finally{
  try{
  rs.close();
  ps1.close();
  ps.close();
  }catch(Exception e){}
  }
      return no;
  }   
  
  public int upadteTraineSatsMultiple(String serviceNumber,int passngers,java.sql.Date dateofjopurney){
  
     String query = "select max(available) from trainseats where trainno=? and dates=?";
  PreparedStatement ps = null;
  PreparedStatement ps1= null;
  ResultSet rs =null;
  try{
  ps = DBConnection.getDBConnection(query);
  ps.setString(1, serviceNumber);
  ps.setDate(2, dateofjopurney);
  rs = ps.executeQuery();
  rs.next();
  trainno=rs.getInt(1);
      System.out.println("No Of Seats:"+no);
  if(trainno==0){
  return trainno;
  }
  else{
  int remainSeat = trainno-passngers;
  String upadteQuery = "update trainseats set available=? where trainno=? and dates=?";
  ps1 = DBConnection.getDBConnection(upadteQuery);
  ps1.setInt(1, remainSeat);
  ps1.setString(2, serviceNumber);
  ps1.setDate(3, dateofjopurney);
 int aa= ps1.executeUpdate();
      //System.out.println("Remaining Seat in Train:"+remainSeat);
 if(aa>0){
      return remainSeat;
 }else{
 return 0;
 }
  }
  }catch(Exception e){
      e.printStackTrace();
     // System.out.println("Error at Updating :"+e.getMessage());
  }finally{
  try{
  rs.close();
  ps1.close();
  ps.close();
  }catch(Exception e){}
  }
      return trainno;
  }
}
