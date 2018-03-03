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
 * @author Tanish
 */
public class LoginCheck {
public String loginCheck(String loginID,String pwd,String role){
String uid = null;
PreparedStatement ps =null;
ResultSet rs = null;
try{
String query = "select sid from logintable where loginname=? and pwd=? and role=?";
ps = DBConnection.getDBConnection(query);
ps.setString(1, loginID);
ps.setString(2, pwd);
ps.setString(3, role);
rs = ps.executeQuery();
if(rs.next()){
uid = rs.getString(1);
    System.out.println("User ID:"+uid);
}
if(uid!=null){
return uid;
}
else{return "error";}
}catch(Exception e){
    System.out.println("Error at:"+e.getMessage());
}finally{
try{
    rs.close();
ps.close();
}catch(Exception e){}
}
return uid;
}
}
