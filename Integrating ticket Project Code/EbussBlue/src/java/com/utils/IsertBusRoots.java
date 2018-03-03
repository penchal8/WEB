/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utils;

import com.ebuss.db.DBConnection;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Ramu
 */
public class IsertBusRoots {
    PreparedStatement ps2=null;
      String insertQuery="insert into busseats values(?,?,?,?,?,?,?,?,?)";
         
  public int addBussRootsSeats(String currentDate,String trainno,String trainname,String sourcecity,String destinationcity,float distance,float cost,int totalSeat,int availableSeat)throws Exception{
  int no=0;
      System.out.println("Service No:"+trainno);
  long base=System.currentTimeMillis();
  ps2 = DBConnection.getDBConnection(insertQuery);
      for (int N=0;N<100;N++) {
        Date date=new Date(base-N*24*60*60*1000);
        //System.out.println(N+" days before: "+date);
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
         SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date parsedCurentDate = format.parse(currentDate);
        int bool= parsedCurentDate.compareTo(date);
        if(bool<0){
              String nextDates = dateFormat.format(date.getTime());
              //System.out.println("Date is:"+nextDates);
             
             SimpleDateFormat dateFormat23 = new SimpleDateFormat("yy-MM-dd");

              java.sql.Date currentDate23=null;
              currentDate23 =new java.sql.Date(dateFormat.parse(nextDates).getTime());
              
              ps2.setString(1, trainno);
              ps2.setString(2, trainname);
              ps2.setString(3, sourcecity);
              ps2.setString(4, destinationcity);
              ps2.setFloat(5, distance);
              ps2.setFloat(6, cost);
              ps2.setDate(7, currentDate23);
              ps2.setInt(8, totalSeat);
              ps2.setInt(9, availableSeat);
              no =  ps2.executeUpdate();
              }
      }
      ps2.close();
  return no;
  }  
}
