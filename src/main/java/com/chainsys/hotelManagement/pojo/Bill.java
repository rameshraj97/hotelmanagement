package com.chainsys.hotelManagement.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
@Entity
@Table(name="bill")
public class Bill {
@Id
@Column(name="Invoice_num")
 private int invoice;

@Column(name=" Guest_id")
 private int guestId;

@Column(name="Room_charge")
 private int roomCharge;

@Column(name="Invoice_date")
 private Date invoiceDate;

@Column(name="Res_num")
 private int reservationNumber;

@Column(name="Payment_mode")
 private String paymentMode;

@Column(name="Invoice_status")
 private String invoiceStatus;

public int getInvoice() {
	return invoice;
}

public void setInvoice(int invoice) {
	this.invoice = invoice;
}

public int getGuestId() {
	return guestId;
}

public void setGuestId(int guestId) {
	this.guestId = guestId;
}

public int getRoomCharge() {
	return roomCharge;
}

public void setRoomCharge(int roomCharge) {
	this.roomCharge = roomCharge;
}

public Date getInvoiceDate() {
	return invoiceDate;
}

public void setInvoiceDate(Date invoiceDate) {
	this.invoiceDate = invoiceDate;
}

public int getReservationNumber() {
	return reservationNumber;
}

public void setReservationNumber(int reservationNumber) {
	this.reservationNumber = reservationNumber;
}

public String getPaymentMode() {
	return paymentMode;
}

public void setPaymentMode(String paymentMode) {
	this.paymentMode = paymentMode;
}

public String getInvoiceStatus() {
	return invoiceStatus;
}

public void setInvoiceStatus(String invoiceStatus) {
	this.invoiceStatus = invoiceStatus;
}

}