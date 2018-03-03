/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ebuss.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Tanish
 */
public class DBConnection {
private static Connection con=null;
private static PreparedStatement ps =null;
public static PreparedStatement getDBConnection(String query){
    try{
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebussticket","root","root");
        //con = DriverManager.getConnection("jdbc:mysql://node103575-env-2386197.j.layershift.co.uk/ebussticket","root","BPGpgz11774");
        ps = con.prepareStatement(query);
        if(con!=null){
        return ps;
        }
    }catch(SQLException sqle){
        System.out.println(sqle.getMessage());
    }catch(Exception e){
        System.out.println(e.getMessage());
    }

return ps;

}
}
