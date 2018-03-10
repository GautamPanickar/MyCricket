/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mycricketprobably;

import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;




/**
 *
 * @author USER
 */
public class Mycricketprobably {
    
    

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
     try {
            // Set cross-platform Java L&F (also called "Metal")
        UIManager.setLookAndFeel("com.sun.java.swing.plaf.nimbus.NimbusLookAndFeel");
    } 
    catch (UnsupportedLookAndFeelException e) {
       // handle exception
    }
    catch (ClassNotFoundException e) {
       // handle exception
    }
    catch (InstantiationException e) {
       // handle exception
    }
    catch (IllegalAccessException e) {
       // handle exception
    }
        
    new SwingApplication(); //Create and show the GUI.
        mc ob=new mc();
    ob.setVisible(true);
    
    
        
        
    }
    
}
