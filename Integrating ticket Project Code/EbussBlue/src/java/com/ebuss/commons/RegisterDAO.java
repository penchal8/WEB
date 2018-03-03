/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ebuss.commons;

import com.ebuss.db.DBConnection;
import java.sql.PreparedStatement;

/**
 *
 * @author Tanish
 */
public class RegisterDAO {


public String studentRegister(StudentRegisterBeans srb){
String msg =null;
PreparedStatement ps1=null;
PreparedStatement ps2 = null;
String query1 = "insert into studentregister values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
String query2 = "insert into logintable values(?,?,?,?)";
int count=0;
try{
ps1 = DBConnection.getDBConnection(query1);
ps1.setString(1, srb.getSid());
ps1.setString(2, srb.getName());
ps1.setString(3, srb.getLoginid());
ps1.setString(4, srb.getPwd());
ps1.setString(5, "Infy College");
ps1.setString(6, srb.getAddress());
ps1.setString(7, srb.getUniversity());
ps1.setString(8, srb.getCity());
ps1.setString(9, srb.getState());
ps1.setString(10, srb.getZipcode());
ps1.setString(11, srb.getHallticket());
ps1.setString(12, srb.getSunique());
ps1.setString(13, srb.getEmail());
ps1.setString(14, srb.getMobile());
ps1.setDate(15, srb.getDate());
ps1.setString(16, srb.getRole());
count =ps1.executeUpdate();
if(count>0){
ps2 = DBConnection.getDBConnection(query2);
ps2.setString(1, srb.getSid());
ps2.setString(2, srb.getLoginid());
ps2.setString(3, srb.getPwd());
ps2.setString(4, srb.getRole());
int no = ps2.executeUpdate();
if(no>0){
msg="success";
return msg;
}else{ return "faild";}
}
else{
    return "faild";
}
}catch(Exception e){
    System.out.println(e.getMessage());
}finally{
try{
ps2.close();
ps1.close();
}catch(Exception ee){}
}
return msg;
}

}
