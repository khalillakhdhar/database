/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.SQLException;

/**
 *
 * @author TPC
 */
public class Teste {
    public static void main(String args[]) throws SQLException
    {
        Admin a=new Admin();
        a.setCode(12345678);
        System.out.println(a.authentifier());
        //Connexion c=new Connexion();
   // Admin a=new Admin();
    //a.aff();
   // Admin.aff();
    }
}
