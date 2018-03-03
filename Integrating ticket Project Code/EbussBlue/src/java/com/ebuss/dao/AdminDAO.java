/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ebuss.dao;

import com.ebuss.beans.AddTrainAndBusPass;
import com.ebuss.beans.AddingBussRoots;
import com.ebuss.beans.AddingTrainRoots;
import com.ebuss.beans.AdminLoginBeans;
import com.ebuss.db.DBConnection;
import com.utils.InsertTrainRoots;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

/**
 *
 * @author Tanish
 */
public class AdminDAO {
    
public String loginCheck(AdminLoginBeans alb) {
String msg=null;
String query="select count(*) from adminlogin where username=? and pwd=?";
PreparedStatement ps=null;
ResultSet rs = null;
int count=0;
try{
ps=DBConnection.getDBConnection(query);
ps.setString(1, alb.getUserName());
ps.setString(2, alb.getPwd());
rs = ps.executeQuery();
if(rs.next()){
count = rs.getInt(1);

}
if(count>0){
msg ="valid";
return msg;
}else{
msg="invalid";
return msg;
}
}catch(Exception e){
    System.out.println(e.getMessage());
}finally{
    try{
ps.close();
    }catch(Exception e){}
}
return msg;
}

public String addBussRoot(AddingBussRoots abr){
String result=null;
String query="insert into bussroot(sourcecity,sourcestate,distance,destinationcity,desinationstate,cost,serviceno,busname,busstatus) values(?,?,?,?,?,?,?,?,?) ";
PreparedStatement ps=null;
//ResultSet rs = null;
int count=0;
try{
ps = DBConnection.getDBConnection(query);
ps.setString(1, abr.getSourcecity());
ps.setString(2,abr.getSourcestate());
ps.setFloat(3, abr.getDistance());
ps.setString(4, abr.getDestinationcity());
ps.setString(5, abr.getDestinationstate());
ps.setFloat(6, abr.getCost());
ps.setString(7, abr.getServiceno());
ps.setString(8, abr.getBusname());
ps.setString(9,"no");
count = ps.executeUpdate();
if(count>0){
result ="success";
return result;
}else{
result="faild";
return result;
}
}catch(SQLException sql){
    System.out.println(sql.getMessage());
}catch(Exception e){
    System.out.println(e.getMessage());
}finally{
    try{
ps.close();
    }catch(Exception e){}
}

return result;
}

public String addTrainRoot(AddingTrainRoots atr){
String result=null;
String query="insert into trainroot(sourcecity,sourcestate,distance,destinationcity,desinationstate,cost,trainno,trainname,seatstatus) values(?,?,?,?,?,?,?,?,?) ";
PreparedStatement ps=null;
//ResultSet rs = null;
int count=0;
try{
ps = DBConnection.getDBConnection(query);
ps.setString(1, atr.getSourcecity());
ps.setString(2,atr.getSourcestate());
ps.setFloat(3, atr.getDistance());
ps.setString(4, atr.getDestinationcity());
ps.setString(5, atr.getDestinationstate());
ps.setFloat(6, atr.getCost());
ps.setString(7, atr.getTrainNo());
ps.setString(8, atr.getTrainName());
ps.setString(9, "no");
count = ps.executeUpdate();
if(count>0){
result ="success";
return result;
}else{
result="faild";
return result;
}
}catch(SQLException sql){
    System.out.println(sql.getMessage());
}catch(Exception e){
    System.out.println(e.getMessage());
}finally{
    try{
ps.close();
    }catch(Exception e){}
}

return result;
}

public String addTrainSeats(String  cdate){
    int no=0;
    String msg=null;
    
    String trainno=null;
    String trainname=null;
    String sourcecity=null;
    String destinationcity=null;
    float distance = 0;
    float cost = 0;
    String currentDate=null;
    int totalSeat = 0;
    int availableSeat = 0;
    PreparedStatement ps = null;
    PreparedStatement ps2 = null;
    ResultSet rs = null;
    String getTrainInfoQuery ="select trainno,trainname,sourcecity,destinationcity,distance,cost from trainroot";
    try{
     InsertTrainRoots itr = new InsertTrainRoots();
    ps = DBConnection.getDBConnection(getTrainInfoQuery);
    rs = ps.executeQuery();
    int count=0;
    ArrayList list = new ArrayList();
    while(rs.next()){
        count++;
    trainno = rs.getString(1);
    list.add(trainno);
    trainname = rs.getString(2);
    sourcecity = rs.getString(3);
    destinationcity = rs.getString(4);
    distance = rs.getFloat(5);
    cost = rs.getFloat(6);
    currentDate = cdate;
    totalSeat = 300;
    availableSeat =300;
        //System.out.println("Train Number:"+);
    
       //no = itr.addTrainRoots(list, trainno, trainname, sourcecity, destinationcity, distance, cost, currentDate, totalSeat, availableSeat);
    
    
    }
        Iterator it = list.iterator();
        while(it.hasNext()){
            System.out.println("Trains:"+it.next());
           // no = itr.addTrainRoots((String)it.next(), trainname, sourcecity, destinationcity, distance, cost, currentDate, totalSeat, availableSeat);
        }
        
    if(no>0){
     msg="success";
     return msg;
      }else{ return "faild";}

    }catch(Exception e){
        System.out.println("Adding Trains Seats:"+e.getMessage());
    }
    return msg;
}

public String addBusAndTrainRoots(AddTrainAndBusPass atabp){
String result = null;
String rootpas = "insert into rootpass values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
int count=0;
 PreparedStatement ps = null;
 try{
 ps = DBConnection.getDBConnection(rootpas);
 ps.setString(1, atabp.getStartingOrigin());
 ps.setString(2, atabp.getStartingStopName());
 ps.setString(3, atabp.getFisrtRootNumber());
 ps.setFloat(4, atabp.getFirstCost());
 ps.setString(5, atabp.getGetDownFirstStop());
 ps.setString(6, atabp.getFirstWalkDistance());
 ps.setString(7, atabp.getFirstTrainStationName());
 ps.setString(8, atabp.getFirstTrainName());
 ps.setFloat(9, atabp.getSecondCost());
 ps.setString(10, atabp.getGetDownTrainStopName());
 ps.setString(11, atabp.getSecondWalkDistance());
 ps.setString(12, atabp.getGetInSecondBusNumber());
 ps.setFloat(13, atabp.getThirdCost());
 ps.setString(14, atabp.getDestination());
 ps.setFloat(15, atabp.getTotalCost());
 count = ps.executeUpdate();
if(count>0){
 result ="success";
 return result;
  }else{
  result="faild";
   return result;
  }
 
 
 }catch(Exception e){
     System.out.println("Error At Root Pass:"+e.getMessage());
 }finally{
 try{ps.close();}catch(Exception ee){}
 }
return result;
}
}
