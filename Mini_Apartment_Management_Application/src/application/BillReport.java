package application;

import java.io.InputStream;
import java.sql.Connection;
import java.util.Map;

import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperViewer;

public class BillReport {

	public static JasperReport jreport;
	public static JasperViewer jviewer;
	public static JasperPrint jprint;
  
    public static void createReport(Connection connect, Map<String, Object> map, InputStream by) {
    	try {
    		// Nạp mẫu báo cáo từ InputStream
            jreport = (JasperReport) JRLoader.loadObject(by);
            // Điền dữ liệu vào báo cáo và lưu kết quả vào JasperPrint
            jprint = JasperFillManager.fillReport(jreport, map, connect);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void showReport() {
    	// Tạo JasperViewer với bản in của báo cáo và hiển thị nó
    	jviewer = new JasperViewer(jprint);
        jviewer.setVisible(true);
    }
}

