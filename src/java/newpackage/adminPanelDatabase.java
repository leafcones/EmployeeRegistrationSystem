/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Murad Computer
 */
class adminPanelDatabase {

    Connection con;

    public adminPanelDatabase(Connection con) {
        this.con = con;
    }
    
   //admin Login
    public adminPanel logAdminPanel(String email, String pass){
        adminPanel a=null;
        try{
            String query ="select* from admin where email=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, pass);
            
            ResultSet rs = pst.executeQuery();
            
            
            
            if(rs.next()){
                a.setEmail(rs.getString("email"));
                a.setPassword(rs.getString("password"));   
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return a;
    }
    
    public boolean  assignTask(String n,int id){
        boolean set = false;
        try {
            //Insert register data to database
            String query = "UPDATE user SET task = '"+n+"' where id= "+id;
            PreparedStatement pt = this.con.prepareStatement(query);
            //PreparedStatement pst = this.con.prepareStatement(query);
            //pt.setString(1, n);
            pt.executeUpdate();
            set = true;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Exceptipon in saveUser =" + e.toString());

        }
        return set;
    }

}