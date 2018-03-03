/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ebuss.model;

import com.ebuss.beans.AddTrainAndBusPass;
import com.ebuss.beans.AddingBussRoots;
import com.ebuss.beans.AddingTrainRoots;
import com.ebuss.beans.AdminLoginBeans;
import com.ebuss.dao.AdminDAO;
import java.sql.SQLException;

/**
 *
 * @author Tanish
 */
public class AdminModel {
    AdminDAO aDAO = new AdminDAO();

public String adminLoginCheck(AdminLoginBeans alb) {
String msg = aDAO.loginCheck(alb);
return msg;
}

public String adminAddBussRoots(AddingBussRoots abr) {
String result = aDAO.addBussRoot(abr);
return result;
}

public String adminAddTrainRoots(AddingTrainRoots atr){
String result = aDAO.addTrainRoot(atr);
return result;

}
public String adminAddBusPass(AddTrainAndBusPass atabp){
String result = aDAO.addBusAndTrainRoots(atabp);
return result;
}
}
