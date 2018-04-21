/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.bean;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Nghia
 */
public class LoginBean implements Serializable{
    private String username;
    private String password;
    private String lastname;
    private boolean roles;
    public LoginBean(){ 
    }
    public boolean checkLogin(String username, String password){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql ="select * from Registration where username = ? and password = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            boolean result = rs.next();
            rs.close();
            stm.close();
            con.close();
            if(result){
                return true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }
    public boolean updateRecord(){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "Update Registration set lastname = ?,isAdmin = ? " + "where username = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, lastname);
            stm.setBoolean(2, roles);
            stm.setString(3, username);
            int result = stm.executeUpdate();
            stm.close();
            con.close();
            if(result > 0){
                return true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }
    public LoginBean (String username, String lastname, boolean roles){
        this.username = username;
        this.lastname = lastname;
        this.roles = roles;
    }
    public boolean deleteRecord(){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "delete from Registration where username = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);
            int result = stm.executeUpdate();
            stm.close();
            con.close();
            if(result > 0){
                return true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }
    public LoginBean[] searchLastname(String name){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from Registration where lastname like ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, "%"+name+"%");
            ResultSet rs = stm.executeQuery();
            ArrayList list = new ArrayList();
            while(rs.next()){
                String user = rs.getString("username");
                String pass = rs.getString("lastname");
                boolean roles = rs.getBoolean("isAdmin");
                LoginBean tmp = new LoginBean(user, pass, roles);
                list.add(tmp);
            }
            LoginBean[] result = new LoginBean[list.size()];
            list.toArray(result);
            rs.close();
            stm.close();
            con.close();
            return result;
        }catch(Exception e){
            e.printStackTrace();
        }       
        return null;
    }
    public boolean insert (String username, String password, String lastname, boolean roles){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "insert into Registration values(?,?,?,?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            stm.setString(3, lastname);
            stm.setBoolean(4, roles);
            int result = stm.executeUpdate();
            stm.close();
            con.close();
            if(result>0){
                return true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getLastname() {
        return lastname;
    }
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
    public boolean isRoles() {
        return roles;
    }
    public void setRoles(boolean roles) {
        this.roles = roles;
    }   
}
