/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ebuss.commons;

import java.sql.Date;

/**
 *
 * @author Tanish
 */
public class StudentRegisterBeans {
    private String sid;
    private String name;
    private String loginid;
    private String pwd;
    private String collegeName;
    private String address;
    private String university;
    private String city;
    private String state;
    private String zipcode;
    private String hallticket;
    private String sunique;
    private String email;
    private String mobile;
    private java.sql.Date date;
    private String role;

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCollegeName() {
        return collegeName;
    }

    public void setCollegeName(String collegeName) {
        this.collegeName = collegeName;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHallticket() {
        return hallticket;
    }

    public void setHallticket(String hallticket) {
        this.hallticket = hallticket;
    }

    public String getLoginid() {
        return loginid;
    }

    public void setLoginid(String loginid) {
        this.loginid = loginid;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getSunique() {
        return sunique;
    }

    public void setSunique(String sunique) {
        this.sunique = sunique;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }
    
}
