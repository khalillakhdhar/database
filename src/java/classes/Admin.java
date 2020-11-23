/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author TPC
 */
public class Admin {

    private int id;
    private String nom, type;
    private int code;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public Admin() {
    }

    public Admin(int id, String nom, String type, int code) {
        this.id = id;
        this.nom = nom;
        this.type = type;
        this.code = code;
    }

    public  ResultSet aff() throws SQLException {
        Connexion c = new Connexion(); //appel de connexion à la BD
        PreparedStatement pst; 
        pst = (PreparedStatement) c.conn.prepareStatement("SELECT * FROM admin"); // lister les admins
        pst.executeQuery(); // lister les admins
        ResultSet rs = (ResultSet) pst.executeQuery(); // stocker le résultat dans un resultset
       /* while(rs.next()) {
            System.out.println(rs.getString("nom")); //teste d’affichage
        }
*/
       return rs;
    }
    
    public boolean authentifier() throws SQLException
    {
      Connexion c = new Connexion(); //appel de connexion à la BD
        PreparedStatement pst; 
        pst = (PreparedStatement) c.conn.prepareStatement("SELECT * FROM admin WHERE code='"+this.getCode()+"'"); // lister les admins
        pst.executeQuery(); // lister les admins
        ResultSet rs = (ResultSet) pst.executeQuery(); // stocker le résultat dans un resultset
        if(rs.next()) {
           // System.out.println(rs.getString("nom")); //teste d’affichage
           return true;
        }
        else
            return false;
    
    
    }

}
