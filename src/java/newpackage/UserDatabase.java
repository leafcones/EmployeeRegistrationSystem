/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.sql.*;

/**
 *
 * @author Murad Computer
 */

public class UserDatabase {

    Connection con;

    public UserDatabase(Connection con) {
        this.con = con;
    }

    //for register user 
    public boolean saveUser(User user) {
        boolean set = false;
        try {
            //Insert register data to database
            String query = "insert into user(name,email,password) values(?,?,?)";

            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getName());
            pt.setString(2, user.getEmail());
            pt.setString(3, user.getPassword());

            pt.executeUpdate();
            set = true;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Exceptipon in saveUser =" + e.toString());

        }
        return set;
    }
    
    //User Login
    public User logUser(String email, String pass){
        User user=null;
        try{
            String query ="select * from user where email=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, pass);
            
            ResultSet rs = pst.executeQuery();
            
            
            
            if(rs.next()){
                user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password")); 
                user.setTask(rs.getString("task"));
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return user;
    }
    
    public boolean  deleteUser(int id){
        boolean set = false;
        try {
            //Insert register data to database
            String query = "delete from user where id="+id;
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.executeUpdate();
            set = true;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Exceptipon in saveUser =" + e.toString());

        }
        return set;
    }
}