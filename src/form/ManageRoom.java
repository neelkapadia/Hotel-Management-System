/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package form;

import java.awt.Toolkit;
import java.awt.event.WindowEvent;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

/**
 *
 * @author neelkapadia
 */
public class ManageRoom extends javax.swing.JFrame {

    /**
     * Creates new form ManageRoom
     */
    public ManageRoom() {
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

        Home = new javax.swing.JButton();
        buttonGroup1 = new javax.swing.ButtonGroup();
        deleteRoom = new javax.swing.JRadioButton();
        viewRoom = new javax.swing.JRadioButton();
        jLabel4 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        addRoom = new javax.swing.JRadioButton();
        updateRoom = new javax.swing.JRadioButton();
        Home1 = new javax.swing.JButton();
        submitRoom = new javax.swing.JButton();
        Logout = new javax.swing.JButton();

        Home.setText("Home");
        Home.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                HomeActionPerformed(evt);
            }
        });

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        buttonGroup1.add(deleteRoom);
        deleteRoom.setText("Delete Room");

        buttonGroup1.add(viewRoom);
        viewRoom.setText("View Room");

        jLabel4.setFont(new java.awt.Font("Silom", 2, 24)); // NOI18N
        jLabel4.setText("Wolf Inns");

        jLabel3.setText("Please Choose Task:");

        buttonGroup1.add(addRoom);
        addRoom.setText("Add Room");
        addRoom.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                addRoomActionPerformed(evt);
            }
        });

        buttonGroup1.add(updateRoom);
        updateRoom.setText("Update Room");
        updateRoom.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                updateRoomActionPerformed(evt);
            }
        });

        Home1.setText("Home");
        Home1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Home1ActionPerformed(evt);
            }
        });

        submitRoom.setText("Submit");
        submitRoom.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                submitRoomActionPerformed(evt);
            }
        });

        Logout.setText("Logout");
        Logout.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                LogoutActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(202, 202, 202)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel3)
                    .addComponent(jLabel4)
                    .addComponent(updateRoom)
                    .addComponent(addRoom)
                    .addComponent(viewRoom)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addComponent(submitRoom)
                        .addComponent(deleteRoom)))
                .addContainerGap(219, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(Home1)
                .addGap(3, 3, 3)
                .addComponent(Logout)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(34, Short.MAX_VALUE)
                .addComponent(jLabel4)
                .addGap(18, 18, 18)
                .addComponent(jLabel3)
                .addGap(22, 22, 22)
                .addComponent(addRoom)
                .addGap(18, 18, 18)
                .addComponent(updateRoom)
                .addGap(18, 18, 18)
                .addComponent(deleteRoom)
                .addGap(18, 18, 18)
                .addComponent(viewRoom)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(28, 28, 28)
                        .addComponent(submitRoom)
                        .addGap(54, 54, 54))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(Home1)
                            .addComponent(Logout))
                        .addContainerGap())))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void addRoomActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_addRoomActionPerformed
        // TODO add your handling code here:

    }//GEN-LAST:event_addRoomActionPerformed

    private void updateRoomActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_updateRoomActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_updateRoomActionPerformed

    private void HomeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_HomeActionPerformed
        // TODO add your handling code here:
        Manager mng = new Manager();
        sysExit();
        mng.setVisible(true);
    }//GEN-LAST:event_HomeActionPerformed

    private void Home1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Home1ActionPerformed
        // TODO add your handling code here:
        Manager mng = new Manager();
            sysExit();
        mng.setVisible(true);
    }//GEN-LAST:event_Home1ActionPerformed

    private void submitRoomActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_submitRoomActionPerformed
        // TODO add your handling code here:

        if(addRoom.isSelected()){
            //open add record form
            AddRoom adc = new AddRoom();
            sysExit();
            adc.setVisible(true);

        } else if(updateRoom.isSelected()){
            //open update record form
            UpdateRoom upc = new UpdateRoom();
            sysExit();
            upc.setVisible(true);
        } else if(deleteRoom.isSelected()){

            DeleteRoom dlc = new DeleteRoom();
            sysExit();
         dlc.setVisible(true);
            //open delete record form
        } else if(viewRoom.isSelected()){
            
            ViewRoom vr = new ViewRoom();
            sysExit();
            vr.setVisible(true);
            //view list of records
        } else {
            //throw 
            
                                        JFrame jf = new JFrame();
                JOptionPane.showMessageDialog(jf,"PLEASE CHOOSE","ERROR",JOptionPane.ERROR_MESSAGE);
        }

    }//GEN-LAST:event_submitRoomActionPerformed

    private void LogoutActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_LogoutActionPerformed
        // TODO add your handling code here:
        Login l = new Login();
        sysExit();
        l.setVisible(true);
    }//GEN-LAST:event_LogoutActionPerformed

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
            java.util.logging.Logger.getLogger(ManageRoom.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ManageRoom.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ManageRoom.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ManageRoom.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ManageRoom().setVisible(true);
            }
        });
    }
    
       public void sysExit(){
        WindowEvent winClosing = new WindowEvent(this,WindowEvent.WINDOW_CLOSING);
        Toolkit.getDefaultToolkit().getSystemEventQueue().postEvent(winClosing);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Home;
    private javax.swing.JButton Home1;
    private javax.swing.JButton Logout;
    private javax.swing.JRadioButton addRoom;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JRadioButton deleteRoom;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JButton submitRoom;
    private javax.swing.JRadioButton updateRoom;
    private javax.swing.JRadioButton viewRoom;
    // End of variables declaration//GEN-END:variables
}
