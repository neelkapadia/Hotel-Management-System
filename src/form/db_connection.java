/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package form;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author neelkapadia
 */
public class db_connection {
    Connection connect_db() throws Exception {
        String user = "root";
        String pass = "";
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wolfinn",user, pass);
        System.out.println("Connected");
//        Statement stmt = con.createStatement();
//        ResultSet r = stmt.executeQuery("select * from customer");
//        while(r.next()){
//            System.out.println(r.getString(1));
//        }
        //System.out.println(con.getClass());
        return conn;
    }
    
    void close_db(Connection conn) throws Exception {
        if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(AddCustomer.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
    }
}
