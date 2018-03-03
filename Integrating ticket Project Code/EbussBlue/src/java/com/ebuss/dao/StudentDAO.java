/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ebuss.dao;

import com.ebuss.commons.LoginCheck;

/**
 *
 * @author Tanish
 */
public class StudentDAO {

public String loginCheckStudent(String lid,String pwd,String role){
String uid = null;
LoginCheck lCheck = new LoginCheck();
uid = lCheck.loginCheck(lid, pwd, role);
return uid;
}

}
