
package Config;
import com.lowagie.text.*;
import com.lowagie.text.pdf.*;
import java.awt.Color;

import javax.swing.*;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.table.TableModel;
import java.io.File;
import java.io.FileOutputStream;

public class PDFExporter {

    public static void exportPayslipFromTextArea(JTextArea payslipArea) {
        JFileChooser chooser = new JFileChooser();
        chooser.setDialogTitle("Save Payslip PDF");
        chooser.setFileFilter(new FileNameExtensionFilter("PDF Documents", "pdf"));

        int result = chooser.showSaveDialog(null);
        if (result != JFileChooser.APPROVE_OPTION) {
            return;
        }

        File file = chooser.getSelectedFile();
        String filePath = file.getAbsolutePath();
        if (!filePath.toLowerCase().endsWith(".pdf")) {
            filePath += ".pdf";
        }

        Document document = new Document(PageSize.A4);
        try {
            PdfWriter.getInstance(document, new FileOutputStream(filePath));
            document.open();

            // Optional: Logo
            try {
                Image logo = Image.getInstance("Images/logo.png");
                logo.scaleToFit(80, 80);
                logo.setAlignment(Image.LEFT);
                document.add(logo);
            } catch (Exception e) {
                System.out.println("Logo not found.");
            }

            // Title
            Font titleFont = new Font(Font.HELVETICA, 16, Font.BOLD);
            Paragraph title = new Paragraph("Employee Payslip", titleFont);
            title.setAlignment(Element.ALIGN_CENTER);
            document.add(title);
            document.add(Chunk.NEWLINE);

            // Payslip text
            Font textFont = new Font(Font.COURIER, 12);
            Paragraph content = new Paragraph(payslipArea.getText(), textFont);
            document.add(content);

            // Footer
            document.add(Chunk.NEWLINE);
            Paragraph footer = new Paragraph("Generated on: " + java.time.LocalDate.now());
            footer.setAlignment(Element.ALIGN_RIGHT);
            document.add(footer);

            document.close();
            JOptionPane.showMessageDialog(null, "Payslip exported successfully!");
        } catch (Exception e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, "Error saving PDF: " + e.getMessage());
        }
    }
   public static void exportSelectedRowsToPDF(JTable table, int[] selectedRows) {
    JFileChooser chooser = new JFileChooser();
    chooser.setDialogTitle("Save PDF");
    chooser.setFileFilter(new javax.swing.filechooser.FileNameExtensionFilter("PDF Documents", "pdf"));

    int result = chooser.showSaveDialog(null);
    if (result != JFileChooser.APPROVE_OPTION) return;

    File file = chooser.getSelectedFile();
    String filePath = file.getAbsolutePath();
    if (!filePath.toLowerCase().endsWith(".pdf")) {
        filePath += ".pdf";
    }

    com.lowagie.text.Document document = new com.lowagie.text.Document(com.lowagie.text.PageSize.A4);
    try {
        com.lowagie.text.pdf.PdfWriter.getInstance(document, new java.io.FileOutputStream(filePath));
        document.open();

        // Add Title
        com.lowagie.text.Font titleFont = new com.lowagie.text.Font(com.lowagie.text.Font.HELVETICA, 18, com.lowagie.text.Font.BOLD);
        com.lowagie.text.Paragraph title = new com.lowagie.text.Paragraph("My Payslip", titleFont);
        title.setAlignment(com.lowagie.text.Element.ALIGN_CENTER);
        title.setSpacingAfter(20f);
        document.add(title);

        javax.swing.table.TableModel model = table.getModel();

        com.lowagie.text.Font labelFont = new com.lowagie.text.Font(com.lowagie.text.Font.HELVETICA, 12, com.lowagie.text.Font.BOLD);
        com.lowagie.text.Font valueFont = new com.lowagie.text.Font(com.lowagie.text.Font.HELVETICA, 12);

        for (int rowIndex : selectedRows) {
            com.lowagie.text.pdf.PdfPTable infoTable = new com.lowagie.text.pdf.PdfPTable(2);
            infoTable.setWidthPercentage(100);
            infoTable.setSpacingBefore(10f);
            infoTable.setSpacingAfter(10f);

            for (int col = 0; col < model.getColumnCount(); col++) {
                String label = model.getColumnName(col);
                Object valueObj = model.getValueAt(rowIndex, col);
                String value = valueObj != null ? valueObj.toString() : "";

                com.lowagie.text.pdf.PdfPCell labelCell = new com.lowagie.text.pdf.PdfPCell(new com.lowagie.text.Phrase(label + ":", labelFont));
                com.lowagie.text.pdf.PdfPCell valueCell = new com.lowagie.text.pdf.PdfPCell(new com.lowagie.text.Phrase(value, valueFont));

                labelCell.setBorder(com.lowagie.text.Rectangle.NO_BORDER);
                valueCell.setBorder(com.lowagie.text.Rectangle.NO_BORDER);

                infoTable.addCell(labelCell);
                infoTable.addCell(valueCell);
            }

            document.add(infoTable);
            document.add(new com.lowagie.text.Paragraph("--------------------------------------------------"));
        }

        document.close();
        javax.swing.JOptionPane.showMessageDialog(null, "Selected rows exported to PDF:\n" + filePath);
    } catch (Exception e) {
        e.printStackTrace();
        javax.swing.JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
    }
}


}

    

