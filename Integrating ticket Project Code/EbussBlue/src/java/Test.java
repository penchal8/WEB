
import com.ebuss.commons.GenerateBusTicket;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Ramu
 */
public class Test {
    public static void main(String[] args) {
        GenerateBusTicket gbt = new GenerateBusTicket();
        int ticket = gbt.generateBusTicket();
        System.out.println("Ticket Number:"+ticket);
    }
  
}
