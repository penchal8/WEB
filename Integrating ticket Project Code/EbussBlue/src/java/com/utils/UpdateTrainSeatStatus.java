/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utils;

import com.ebuss.db.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author Ramu
 */
public class UpdateTrainSeatStatus {
  public String updateSeat(String trainno,String trainname){
  String msg =null;
  PreparedStatement ps = null;
  String query ="update trainroot set seatstatus=? where trainno=? and trainname=?";
  try{
  ps = DBConnection.getDBConnection(query);
  ps.setString(1, "yes");
  ps.setString(2, trainno);
  ps.setString(3, trainname);
  int no =ps.executeUpdate();
  if(no>0){
  msg="success";
  return msg;
  }
  }catch(Exception e){
      System.out.println("Error :"+e.getMessage());
  }
  return msg;
  }  
}
