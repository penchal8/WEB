/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ebuss.model;

import com.ebuss.dao.StudentDAO;

/**
 *
 * @author Tanish
 */
public class StudentModel {
    
    StudentDAO sDAO = new StudentDAO();
    public String loginCheck(String lid,String pwd,String role){
    String uid = null;
    uid = sDAO.loginCheckStudent(lid, pwd, role);
    return uid;
    }
}
