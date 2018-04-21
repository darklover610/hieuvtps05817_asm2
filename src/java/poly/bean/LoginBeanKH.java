/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package poly.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author phunglv
 */
public class LoginBeanKH {
    private String username;
    private String password;
    private String lastname;
    public LoginBeanKH() {
        username="";
        password="";
        lastname="";
    }
    public String getLastname() {
        return lastname;
    }
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
    public boolean isCheckLogin()
    {
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from Customers where Username=? and Password=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.username);
            stm.setString(2, this.password);
            ResultSet rs = stm.executeQuery();
            if(rs.next()){
                lastname = rs.getString("Hoten");
                System.out.println(lastname);
                rs.close();
                stm.close();
                con.close();
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
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
}
