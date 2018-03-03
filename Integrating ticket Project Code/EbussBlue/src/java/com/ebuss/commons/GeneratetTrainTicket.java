/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ebuss.commons;

/**
 *
 * @author Ramu
 */
public class GeneratetTrainTicket {
 int finalid;

int pKey;
int pkeys;
public int generateBusTicket(){
for(int i=1;i<=10;i++){
pkeys = (int) Math.round(Math.random()*5000000);

pKey+=pkeys;
}
finalid =pKey/10;
return finalid;
}      
}
