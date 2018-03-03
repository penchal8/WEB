/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ebuss.beans;

import java.io.Serializable;

/**
 *
 * @author Ramu
 */
public class AddTrainAndBusPass implements Serializable{
  private String startingOrigin;
  private String startingStopName;
  private String fisrtRootNumber;
  private float firstCost;
  private String getDownFirstStop;
  private String firstWalkDistance;
  private String firstTrainStationName;
  private String firstTrainName;
  private float secondCost;
  private String getDownTrainStopName;
  private String secondWalkDistance;
  private String getInSecondBusNumber;
  private float thirdCost;
  private String destination;
  private float totalCost;

    public String getStartingOrigin() {
        return startingOrigin;
    }

    public void setStartingOrigin(String startingOrigin) {
        this.startingOrigin = startingOrigin;
    }

    public String getStartingStopName() {
        return startingStopName;
    }

    public void setStartingStopName(String startingStopName) {
        this.startingStopName = startingStopName;
    }

    public String getFisrtRootNumber() {
        return fisrtRootNumber;
    }

    public void setFisrtRootNumber(String fisrtRootNumber) {
        this.fisrtRootNumber = fisrtRootNumber;
    }

    public float getFirstCost() {
        return firstCost;
    }

    public void setFirstCost(float firstCost) {
        this.firstCost = firstCost;
    }

    public String getGetDownFirstStop() {
        return getDownFirstStop;
    }

    public void setGetDownFirstStop(String getDownFirstStop) {
        this.getDownFirstStop = getDownFirstStop;
    }

    public String getFirstWalkDistance() {
        return firstWalkDistance;
    }

    public void setFirstWalkDistance(String firstWalkDistance) {
        this.firstWalkDistance = firstWalkDistance;
    }

    public String getFirstTrainStationName() {
        return firstTrainStationName;
    }

    public void setFirstTrainStationName(String firstTrainStationName) {
        this.firstTrainStationName = firstTrainStationName;
    }

    public String getFirstTrainName() {
        return firstTrainName;
    }

    public void setFirstTrainName(String firstTrainName) {
        this.firstTrainName = firstTrainName;
    }

    public float getSecondCost() {
        return secondCost;
    }

    public void setSecondCost(float secondCost) {
        this.secondCost = secondCost;
    }

    public String getGetDownTrainStopName() {
        return getDownTrainStopName;
    }

    public void setGetDownTrainStopName(String getDownTrainStopName) {
        this.getDownTrainStopName = getDownTrainStopName;
    }

    public String getSecondWalkDistance() {
        return secondWalkDistance;
    }

    public void setSecondWalkDistance(String secondWalkDistance) {
        this.secondWalkDistance = secondWalkDistance;
    }

    public String getGetInSecondBusNumber() {
        return getInSecondBusNumber;
    }

    public void setGetInSecondBusNumber(String getInSecondBusNumber) {
        this.getInSecondBusNumber = getInSecondBusNumber;
    }

    public float getThirdCost() {
        return thirdCost;
    }

    public void setThirdCost(float thirdCost) {
        this.thirdCost = thirdCost;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public float getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(float totalCost) {
        this.totalCost = totalCost;
    }
  
  
  
  
}
