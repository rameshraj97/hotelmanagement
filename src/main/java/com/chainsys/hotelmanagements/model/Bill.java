package com.chainsys.hotelmanagements.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="bill")
public class Bill {
@Id
@GeneratedValue(strategy = GenerationType.AUTO, generator = "invoice_seq")
@SequenceGenerator(name = "invoice_seq", sequenceName = "invoice_seq",  allocationSize = 1)
@Column(name="INVOICE_NUMBER")
 private int invoice;

@Column(name=" Guest_id")
 private int guestId;

@Column(name="ROOM_CHARGE")
 private int roomCharge;

@Column(name="INVOICE_DATE")
 private Date invoiceDate;

@Column(name="Res_num")
private int reservationNumber;

@Column(name="Payment_mode")
private String paymentMode;

@Column(name="INVOICE_STATUS ")
private String invoiceStatus;



public Date getInvoiceDate() {
	return invoiceDate;
}

public void setInvoiceDate(Date invoiceDate) {
	this.invoiceDate = invoiceDate;
}


@ManyToOne(fetch =FetchType.LAZY)
@JoinColumn(name="Guest_id",nullable=false,insertable = false, updatable=false) 
private Guest guest;

public Guest getGuest() {
	return guest;
}

public void setGuest(Guest guest) {
	this.guest = guest;
}
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