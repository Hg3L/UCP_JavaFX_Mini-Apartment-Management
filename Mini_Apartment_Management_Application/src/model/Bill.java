package model;

import java.time.LocalDate;

public class Bill {
	private int billID; // Mã hóa đơn
	private String accountID; // ID tài khoản
	private String HomeTownID; // Mã tòa
	private String RoomID; // Mã phòng
	private String TenantID; // Mã khách
	private int electricNumber; // Số điện
	private LocalDate invoiceDate; // Ngày xuất hóa đơn
	private String billPrice; // Giá tiền hóa đơn
	
	public Bill() {
		
	}
	
	public Bill(String accountID, String homeTownID, String roomID, String tenantID, int electricNumber,
			LocalDate invoiceDate, String billPrice) {
		this.accountID = accountID;
		HomeTownID = homeTownID;
		RoomID = roomID;
		TenantID = tenantID;
		this.electricNumber = electricNumber;
		this.invoiceDate = invoiceDate;
		this.billPrice = billPrice;
	}
	
	public Bill(int billID, String accountID, String homeTownID, String roomID, String tenantID, int electricNumber,
			LocalDate invoiceDate, String billPrice) {
		this.billID = billID;
		this.accountID = accountID;
		HomeTownID = homeTownID;
		RoomID = roomID;
		TenantID = tenantID;
		this.electricNumber = electricNumber;
		this.invoiceDate = invoiceDate;
		this.billPrice = billPrice;
	}

	public int getBillID() {
		return billID;
	}

	public void setBillID(int billID) {
		this.billID = billID;
	}

	public String getAccountID() {
		return accountID;
	}

	public void setAccountID(String accountID) {
		this.accountID = accountID;
	}

	public String getHomeTownID() {
		return HomeTownID;
	}

	public void setHomeTownID(String homeTownID) {
		HomeTownID = homeTownID;
	}

	public String getRoomID() {
		return RoomID;
	}

	public void setRoomID(String roomID) {
		RoomID = roomID;
	}

	public String getTenantID() {
		return TenantID;
	}

	public void setTenantID(String tenantID) {
		TenantID = tenantID;
	}

	public int getElectricNumber() {
		return electricNumber;
	}

	public void setElectricNumber(int electricNumber) {
		this.electricNumber = electricNumber;
	}

	public LocalDate getInvoiceDate() {
		return invoiceDate;
	}

	public void setInvoiceDate(LocalDate invoiceDate) {
		this.invoiceDate = invoiceDate;
	}

	public String getBillPrice() {
		return billPrice;
	}

	public void setBillPrice(String billPrice) {
		this.billPrice = billPrice;
	}
}
