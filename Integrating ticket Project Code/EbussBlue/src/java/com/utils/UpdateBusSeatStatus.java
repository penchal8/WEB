/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utils;

import com.ebuss.db.DBConnection;
import java.sql.PreparedStatement;

/**
 *
 * @author Ramu
 */
public class UpdateBusSeatStatus {
    public String updateSeat(String serviceNo,String busname){
  String msg =null;
  PreparedStatement ps = null;
  String query ="update bussroot set busstatus=? where serviceno=? and busname=?";
  try{
  ps = DBConnection.getDBConnection(query);
  ps.setString(1, "yes");
  ps.setString(2, serviceNo);
  ps.setString(3, busname);
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
