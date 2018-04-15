/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package form;

import java.awt.Toolkit;
import java.awt.event.WindowEvent;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author neelkapadia
 */
public class Invoice extends javax.swing.JFrame {

    /**
     * Creates new form Invoice
     */
    public Invoice() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jLabel2 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        GenerateInvoice = new javax.swing.JRadioButton();
        GetAmount = new javax.swing.JRadioButton();
        Submit = new javax.swing.JButton();
        amt = new javax.swing.JTextField();
        Home = new javax.swing.JButton();
        Logout = new javax.swing.JButton();
        custid = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        invoiceid = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jLabel2.setFont(new java.awt.Font("Silom", 2, 24)); // NOI18N
        jLabel2.setText("Wolf Inns");

        jLabel1.setText("Select the task you want to perform:");

        buttonGroup1.add(GenerateInvoice);
        GenerateInvoice.setText("Generate Invoice");

        buttonGroup1.add(GetAmount);
        GetAmount.setText("Get total amount owed     $");

        Submit.setText("Submit");
        Submit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SubmitActionPerformed(evt);
            }
        });

        Home.setText("Home");
        Home.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                HomeActionPerformed(evt);
            }
        });

        Logout.setText("Logout");
        Logout.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                LogoutActionPerformed(evt);
            }
        });

        custid.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                custidActionPerformed(evt);
            }
        });

        jLabel3.setText("CustID:");

        invoiceid.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                invoiceidActionPerformed(evt);
            }
        });

        jLabel4.setText("InvoiceID:");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(80, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(GenerateInvoice)
                                    .addComponent(jLabel1))
                                .addGap(40, 40, 40))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(GetAmount)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(amt, javax.swing.GroupLayout.PREFERRED_SIZE, 59, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(59, 59, 59)
                            .addComponent(Submit)
                            .addGap(121, 121, 121)))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                            .addComponent(Home)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(Logout))
                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                            .addComponent(jLabel3)
                            .addGap(18, 18, 18)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(jLabel2)
                                .addGroup(layout.createSequentialGroup()
                                    .addGap(6, 6, 6)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                        .addComponent(invoiceid, javax.swing.GroupLayout.PREFERRED_SIZE, 105, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(custid, javax.swing.GroupLayout.PREFERRED_SIZE, 105, javax.swing.GroupLayout.PREFERRED_SIZE))))
                            .addGap(131, 131, 131)))
                    .addComponent(jLabel4)))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(42, 42, 42)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 8, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(custid, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3))
                .addGap(2, 2, 2)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(invoiceid, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4))
                .addGap(18, 18, 18)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(GenerateInvoice)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(GetAmount)
                    .addComponent(amt, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(Submit)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(Logout)
                    .addComponent(Home)))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void SubmitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SubmitActionPerformed
        // TODO add your handling code here:
        
        db_connection db = new db_connection();
        Connection conn = null;
        Statement stmt = null;
        Statement stmt2 = null;
        ResultSet rs;
        ResultSet rs1;
        ResultSet rs2;
        int b=0;
        float totalRoomCost;
        float totalAmount;
        String payTypeQuery;
        String totalAmountQuery;
        String updateTotalAmount;
        String getServicesQuery;
        String insertInvoiceQuery;
        String insertGenerateInvoiceQuery;
        String roomCostQuery;
        
        int cid = Integer.parseInt(custid.getText());
        int invid = Integer.parseInt(invoiceid.getText());
        
        try {
            conn = db.connect_db();
            stmt = conn.createStatement();
            
            if(GenerateInvoice.isSelected()){
                //open add record form
                conn.setAutoCommit(false);               
                getServicesQuery = "Select servicetype, cost from (Select serviceid, time, a.servicetype, cost from (select * from servicerecord) a join(select * from servicecost)b on a.servicetype=b.servicetype)x join (select * from linkservice where BookingId = (Select bookingid from gets where custid = "+cid+")) y ON x.serviceid = y.serviceid;";
                //code to get pdf invoice
            
//                query = "SELECT x.hotelid, x.rooms_occupied, y.total_rooms FROM (SELECT i.hotelid, count(*) as rooms_occupied FROM isAssigned i GROUP BY i.hotelid) x JOIN (SELECT r.hotelid, count(*) as total_rooms from Room r group by r.hotelid) y ON x.hotelid = y.hotelid;";
//                ReportOccupancyByHotel report = new ReportOccupancyByHotel();
                GenerateInvoice invoice = new GenerateInvoice();
                //sysExit();
                //JTable table = new JTable(report.Report);
                DefaultTableModel model = (DefaultTableModel) invoice.invoiceFrame.getModel();
                
                System.out.println("Before try");
                
                try {
                    // Get staffid of the logged in staff
                    int staffId = Integer.parseInt((String)Intermediate.getItem("frontDeskStaffId"));
                    
                    // Get hotelid from the staffid
                    String getHotelId = "SELECT hotelid FROM worksFor WHERE staffid="+staffId;
                    rs = stmt.executeQuery(getHotelId);
                    rs.next();
                    int hotelId = Integer.parseInt(rs.getString("hotelid"));
                    
                    // get category of room from cid, invoiceid (if needed) --> custid-gets-bookingid-isAssigned-hotelid,roomnum-room-category
                    roomCostQuery = "Select Sum(DATEDIFF (enddate,startdate) * (Select Price from RoomPrice where hotelid="+hotelId+" AND category= (Select category from Room where HotelId=(select hotelId from isAssigned where bookingId = (SELECT BookingId FROM gets where custID = '"+cid+"')) And roomNum= (select roomnum from isAssigned where bookingId = (SELECT BookingId FROM gets where custID = "+cid+"))))) AS totalRoomPrice from BookingInfo where bookingId = (SELECT BookingId FROM gets where custID = "+cid+") Group by bookingId";
                    rs = stmt.executeQuery(roomCostQuery);
                    rs.next();
//                    //Store value in an integer for convenience
//                    totalRoomCost = Float.parseFloat(rs.getString("totalRoomPrice"));
                    System.out.println("After room cost query");
                    int roomCost = Integer.parseInt(rs.getString("totalRoomPrice"));

                    // Check if there is any service added to the user's bookingid
                    String checkServices = "SELECT serviceid FROM linkService WHERE bookingid IN (SELECT bookingid FROM gets WHERE custid="+cid+")";
                    rs = stmt.executeQuery(checkServices);
                    
                    int servicesCost = 0;
                    
                    if(rs.next()){
                        rs.beforeFirst();
                        // Define servicesCost
                        while(rs.next()){
                            // for each serviceid add the cost
                            String findCost = "SELECT cost FROM ServiceCost WHERE servicetype = (SELECT servicetype FROM ServiceRecord WHERE serviceid = "+rs.getString("serviceid")+")";
                            stmt2 = conn.createStatement();
                            rs2 = stmt2.executeQuery(findCost);
                            rs2.next();
                            servicesCost += Integer.parseInt(rs2.getString("cost"));
                        }
                        
                        insertInvoiceQuery = "Insert into Invoice(invoiceID, invoiceDate,totalAmt) values ("+invid+", (Select enddate from BookingInfo where bookingId = (SELECT BookingId FROM gets where custID = "+cid+")),(Select v.totalamt from (Select l.BookingId, sum(roomprice + serviceprice) as totalamt from (Select BookingId, price*(select DATEDIFF (enddate,startdate) from Bookinginfo where bookingid=d.bookingid) as roomprice from (Select Hotelid,roomnum,price from ((Select * from RoomPrice)a join (select HotelId,roomnum,category from Room)b on a.category=b.category))c join (Select * from isAssigned)d on c.hotelid=d.hotelid and c.roomnum=d.roomnum)l join (Select Bookingid, sum(cost) as serviceprice from (Select x.serviceType,cost,serviceid from ((Select * from serviceCost)x join (Select * from servicerecord)y on x.servicetype=y.servicetype))z join (select * from linkservice)w on z.serviceid=w.serviceid group by bookingid)m on l.bookingid = m.bookingid and m.bookingid = (select bookingid from gets where custid="+cid+") group by bookingid)v))";
                        //String q = "select * from (Select * from gets where custid = "+cid+")h join (select * from generateInvoice)i on h.bookingid=i.bookingid";
                        //rs1 = stmt.executeQuery(q);

                        //if(!rs1.next()){
                          //  stmt.executeUpdate(insertGenerateInvoiceQuery);

                        //System.out.println("Inserts executed");
                        //}
                        
                        System.out.println("Invoice insert executed");

                        insertGenerateInvoiceQuery = "Insert into generateInvoice values ("+invid+",(Select bookingid from gets where custid = "+cid+"))";

                        // Add generate invoice query
                        rs = stmt.executeQuery(getServicesQuery);
                        System.out.println("After list of services");
                        while (rs.next()) {
                            System.out.println("In while");
                            model.addRow(new Object[]{rs.getString("serviceType"), rs.getString("cost")});
                        }
                        System.out.println("After while");
                    }
                    else{
                        servicesCost = 0;
                        insertInvoiceQuery = "Insert into Invoice(invoiceID, invoiceDate,totalAmt) values ("+invid+", (Select enddate from BookingInfo where bookingId = (SELECT BookingId FROM gets where custID = "+cid+")),"+roomCost+")";
                        insertGenerateInvoiceQuery = "Insert into generateInvoice values ("+invid+",(Select bookingid from gets where custid = "+cid+"))";
                    }
                    // Add insert query
                    stmt.executeUpdate(insertInvoiceQuery);
                    stmt.executeUpdate(insertGenerateInvoiceQuery);
                    
                    model.addRow(new Object[]{"Room", roomCost});
                    
//                    totalAmountQuery = "SELECT totalAmt FROM Invoice WHERE invoiceID = '"+invid+"';";
//                    rs = stmt.executeQuery(totalAmountQuery);
//                    rs.next();
                    totalAmount = servicesCost + roomCost;


                    model.addRow(new Object[]{"TOTAL", totalAmount});
                    // Storing totalAmount for access if payType is hotel credit
//                    totalAmount = Float.parseFloat(rs.getString("totalAmt"));
                    
                    // cid-gets-bookingid-has-ssn-billinfo-paytype
                    payTypeQuery = "Select paytype from billinfo where ssn=(Select ssn from has where bookingid = (select bookingid from gets where custid="+cid+"));";
                    rs = stmt.executeQuery(payTypeQuery);
                    rs.next();
                    
                    // if hotel credit card
                    if(rs.getString("paytype").equals("hotel credit")){
//                        totalRoomCost = totalRoomCost*(float)0.95;
                        totalAmount = totalAmount*(float)0.95;
                        model.addRow(new Object[]{"TOTAL AFTER DISCOUNT", String.valueOf(totalAmount)});
                        updateTotalAmount = "Update Invoice SET totalAmt="+totalAmount+" WHERE invoiceid='"+invid+"';";
                        stmt.executeUpdate(updateTotalAmount);
                        System.out.println("Discounted price is - "+totalAmount);
                    }
//                    // if other payment method
//                    else{
//                        model.addRow(new Object[]{"Room", String.valueOf(totalRoomCost)});
//                    }
                    JOptionPane.showMessageDialog(null, "Invoice added!");
                    invoice.setVisible(true);
                    System.out.println("Room cost added");
                    conn.commit();
                } catch (SQLException e) {
                    e.printStackTrace();
                    JFrame jf = new JFrame();
                    JOptionPane.showMessageDialog(jf, "Check SQL! Rolling back!", "ERROR", JOptionPane.ERROR_MESSAGE);
                    try {
                        conn.rollback();
                    } catch (SQLException ex1) {
                        Logger.getLogger(CheckIn.class.getName()).log(Level.SEVERE, null, ex1);
                    }
                }
                finally {
                    if (stmt != null) {
                        try {
                            stmt.close();
                        } catch (SQLException ex) {
                            Logger.getLogger(AddCustomer.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }

                    if (conn != null) {
                        try {
                            conn.setAutoCommit(true);
                            conn.close();
                        } catch (SQLException ex) {
                            Logger.getLogger(AddRecord.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }
                }
                
            } else if(GetAmount.isSelected()){
                //print amt
                // Will not be possible without an existing invoice already present
                totalAmountQuery = "SELECT totalAmt FROM Invoice WHERE invoiceID = '"+invid+"';";
                System.out.println(totalAmountQuery);
                try{
                    System.out.println("Before total amount");
                    rs = stmt.executeQuery(totalAmountQuery);
                    rs.next();
//                    System.out.println(rs.getString("totalAmt"));
                    amt.setText(rs.getString("totalAmt"));
                } catch(SQLException e){
                    e.printStackTrace();
                    JFrame jf = new JFrame();
                    JOptionPane.showMessageDialog(jf, "No amount present!", "ERROR", JOptionPane.ERROR_MESSAGE);
                }
            }
             else {
                JFrame jf = new JFrame();
                JOptionPane.showMessageDialog(jf, "INVALID INPUT", "ERROR", JOptionPane.ERROR_MESSAGE);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }//GEN-LAST:event_SubmitActionPerformed

    private void HomeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_HomeActionPerformed
        // TODO add your handling code here:
        FrontDesk fd = new FrontDesk();
        sysExit();
        fd.setVisible(true);
    }//GEN-LAST:event_HomeActionPerformed

    private void LogoutActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_LogoutActionPerformed
        // TODO add your handling code here:
        Login l = new Login();
        sysExit();
        l.setVisible(true);
    }//GEN-LAST:event_LogoutActionPerformed

    private void custidActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_custidActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_custidActionPerformed

    private void invoiceidActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_invoiceidActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_invoiceidActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Invoice.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Invoice.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Invoice.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Invoice.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Invoice().setVisible(true);
            }
        });
    }
    
            public void sysExit(){
        WindowEvent winClosing = new WindowEvent(this,WindowEvent.WINDOW_CLOSING);
        Toolkit.getDefaultToolkit().getSystemEventQueue().postEvent(winClosing);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JRadioButton GenerateInvoice;
    private javax.swing.JRadioButton GetAmount;
    private javax.swing.JButton Home;
    private javax.swing.JButton Logout;
    private javax.swing.JButton Submit;
    private javax.swing.JTextField amt;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JTextField custid;
    private javax.swing.JTextField invoiceid;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    // End of variables declaration//GEN-END:variables
}
