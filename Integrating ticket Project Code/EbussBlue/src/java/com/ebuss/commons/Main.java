/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ebuss.commons;

import java.text.SimpleDateFormat;
import java.sql.Date;
/**
 *
 * @author Tanish
 */
public class Main {
    public static void main(String[] args) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yy-MM-dd");
        Date sqlStartDate=null;
        try{
        sqlStartDate = new Date(dateFormat.parse("2015-05-28").getTime());
            System.out.println("Current date:"+sqlStartDate);
        }catch(Exception e){}
    }
}
