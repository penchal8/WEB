/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ebuss.beans;

/**
 *
 * @author Tanish
 */
public class AddingBussRoots {
private String sourcecity;
private String sourcestate;
private float distance;
private String destinationcity;
private String destinationstate;
private float cost;
private String serviceno;
private String busname;

    public String getServiceno() {
        return serviceno;
    }

    public void setServiceno(String serviceno) {
        this.serviceno = serviceno;
    }

    public String getBusname() {
        return busname;
    }

    public void setBusname(String busname) {
        this.busname = busname;
    }

    public float getCost() {
        return cost;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }

    public String getDestinationcity() {
        return destinationcity;
    }

    public void setDestinationcity(String destinationcity) {
        this.destinationcity = destinationcity;
    }

    public String getDestinationstate() {
        return destinationstate;
    }

    public void setDestinationstate(String destinationstate) {
        this.destinationstate = destinationstate;
    }

    public float getDistance() {
        return distance;
    }

    public void setDistance(float distance) {
        this.distance = distance;
    }

    public String getSourcecity() {
        return sourcecity;
    }

    public void setSourcecity(String sourcecity) {
        this.sourcecity = sourcecity;
    }

    public String getSourcestate() {
        return sourcestate;
    }

    public void setSourcestate(String sourcestate) {
        this.sourcestate = sourcestate;
    }


}
