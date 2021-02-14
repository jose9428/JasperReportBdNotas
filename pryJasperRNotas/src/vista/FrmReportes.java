package vista;

import java.io.File;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.swing.WindowConstants;
import modelo.Alumno;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperViewer;
import util.MySQLConexion;

public class FrmReportes extends javax.swing.JFrame {

    public FrmReportes() {
        initComponents();
        this.setLocationRelativeTo(null);
    }

    public ArrayList<Alumno> ListaAlumnos() {
        ArrayList<Alumno> lista = new ArrayList<>();
        lista.add(new Alumno("Juan Carlos Fernandez"));
        lista.add(new Alumno("Jose Luis Castro"));
        lista.add(new Alumno("Alan Paucar Caceres"));
        lista.add(new Alumno("Bryan Bazo"));
        lista.add(new Alumno("Fernando Gorrillo"));
        lista.add(new Alumno("Xiomara Quispe Cardenas"));
        lista.add(new Alumno("Marcos Salazar"));
        lista.add(new Alumno("Sumiko Leon Yallico"));
        lista.add(new Alumno("Adely Sotomayor"));
        lista.add(new Alumno("Leonola Salvatierra"));
        lista.add(new Alumno("Rodrigo Alvarez"));

        return lista;
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        BtnAlumnos = new javax.swing.JButton();
        BtnSinConexion = new javax.swing.JButton();
        txtCodeAlu = new javax.swing.JTextField();
        jSeparator1 = new javax.swing.JSeparator();
        BtnImprimirParametros = new javax.swing.JButton();
        BtnAlumnos1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        BtnAlumnos.setText("Imprimir alumnos (BDNotas)");
        BtnAlumnos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BtnAlumnosActionPerformed(evt);
            }
        });

        BtnSinConexion.setText("Imprimir alumnos (ArrayList)");
        BtnSinConexion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BtnSinConexionActionPerformed(evt);
            }
        });

        BtnImprimirParametros.setText("Imprimir notas alumno");
        BtnImprimirParametros.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BtnImprimirParametrosActionPerformed(evt);
            }
        });

        BtnAlumnos1.setText("Imprimir cantidad alumnos por curso");
        BtnAlumnos1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BtnAlumnos1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jSeparator1, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(63, 63, 63)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(BtnAlumnos, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(BtnSinConexion, javax.swing.GroupLayout.DEFAULT_SIZE, 227, Short.MAX_VALUE)
                                    .addComponent(BtnAlumnos1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                            .addGroup(layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(txtCodeAlu, javax.swing.GroupLayout.PREFERRED_SIZE, 149, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(BtnImprimirParametros, javax.swing.GroupLayout.PREFERRED_SIZE, 191, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(0, 22, Short.MAX_VALUE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(27, 27, 27)
                .addComponent(BtnSinConexion, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(BtnAlumnos, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(BtnAlumnos1, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(8, 8, 8)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtCodeAlu, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(BtnImprimirParametros, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(97, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void BtnAlumnosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BtnAlumnosActionPerformed
        try {
            MySQLConexion con = new MySQLConexion();
            Connection conn = con.getConexion();

            String path = "src\\Reporte\\ReportAlumno.jasper";

            JasperReport reporte = (JasperReport) JRLoader.loadObjectFromFile(path);
            JasperPrint jprint = JasperFillManager.fillReport(reporte, null, conn);
            JasperViewer view = new JasperViewer(jprint, false);

            view.setDefaultCloseOperation(DISPOSE_ON_CLOSE);
            view.setVisible(true);

        } catch (JRException ex) {
            ex.printStackTrace();
        }
    }//GEN-LAST:event_BtnAlumnosActionPerformed

    private void BtnSinConexionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BtnSinConexionActionPerformed
        ArrayList<Alumno> lista = ListaAlumnos();

        try {

            String path = "src\\Reporte\\ReportSinBDAlumno.jasper";

            JasperReport reporte = (JasperReport) JRLoader.loadObjectFromFile((path));

            JasperPrint jprint = JasperFillManager.fillReport(reporte, null, new JRBeanCollectionDataSource(lista));

            JasperViewer jv = new JasperViewer(jprint);
            jv.show();

        } catch (JRException ex) {
            System.out.println(ex.getMessage());
            ex.printStackTrace();
        }
    }//GEN-LAST:event_BtnSinConexionActionPerformed

    private void BtnImprimirParametrosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BtnImprimirParametrosActionPerformed
        try {
            MySQLConexion con = new MySQLConexion();
            Connection conn = con.getConexion();

            String path = "src\\Reporte\\ReporteNotas.jasper";

            Map parametro = new HashMap();
            parametro.put("code", txtCodeAlu.getText().trim());

            JasperReport reporte = (JasperReport) JRLoader.loadObjectFromFile((path));
            JasperPrint jprint = JasperFillManager.fillReport(reporte, parametro, conn);
            JasperViewer view = new JasperViewer(jprint, false);

            view.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
            view.setVisible(true);

        } catch (JRException ex) {
            ex.printStackTrace();
        }

        //Segunda Forma
        // JasperReport reporte = (JasperReport) JRLoader.loadObject(getClass().getResource("/reporte/ReporteNotas.jasper"));

    }//GEN-LAST:event_BtnImprimirParametrosActionPerformed

    private void BtnAlumnos1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BtnAlumnos1ActionPerformed
        try {
            MySQLConexion con = new MySQLConexion();
            Connection conn = con.getConexion();

            String path = "src\\Reporte\\ReporteCursos.jasper";

            JasperReport reporte = (JasperReport) JRLoader.loadObjectFromFile((path));
            JasperPrint jprint = JasperFillManager.fillReport(reporte, null, conn);
            JasperViewer view = new JasperViewer(jprint, false);

            view.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
            view.setVisible(true);

        } catch (JRException ex) {
            ex.printStackTrace();
        }
    }//GEN-LAST:event_BtnAlumnos1ActionPerformed

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
            java.util.logging.Logger.getLogger(FrmReportes.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);

        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FrmReportes.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);

        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FrmReportes.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);

        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FrmReportes.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FrmReportes().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BtnAlumnos;
    private javax.swing.JButton BtnAlumnos1;
    private javax.swing.JButton BtnImprimirParametros;
    private javax.swing.JButton BtnSinConexion;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JTextField txtCodeAlu;
    // End of variables declaration//GEN-END:variables
}
