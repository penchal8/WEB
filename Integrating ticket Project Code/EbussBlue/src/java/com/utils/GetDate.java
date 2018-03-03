/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utils;

/**
 *
 * @author Ramu
 */
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class GetDate {
     public static void main(String args[]){

         java.sql.Date currentDate = new java.sql.Date(new java.util.Date().getTime());
         System.out.println("cu:"+currentDate);
        long base=System.currentTimeMillis();
        
          for (int N=0;N<100;N++) {
        Date date=new Date(base-N*24*60*60*1000);
        //System.out.println(N+" days before: "+date);
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        
             
             int bool= currentDate.compareTo(date);
             // System.out.println("Boolean val:"+bool);
              if(bool<0){
              String cdate = dateFormat.format(date.getTime());
              System.out.println(cdate);
              }

    }
     }
}
