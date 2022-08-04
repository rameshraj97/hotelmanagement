package com.chainsys.hotelManagement.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "guest")
public class Guest {
	@Id
	@Column(name = "Guest_id")
	private int guestId;

	@Column(name = "F_name")
	private String firstName;

	@Column(name = "L_name")
	private String lastName;

	@Column(name = "Phone_no")
	private long phoneNo;

	@Column(name = "Address")
	private String address;

	@Column(name = "Email")
	private String email;

	@Column(name = "Gender")
	private String gender;

	@Column(name = "Dob")
	private Date dob;

	@Column(name = "Aadhar_number")
	private long aadharNumber;
	
	//------ step1 connection one to many

	@OneToMany(mappedBy ="guest",fetch=FetchType.LAZY )
	//-------step2 create the reservation object
	private List<Reservation> reservationList;

	public List<Reservation> getReservationList() {
		return reservationList;
	}

	public void setReservationList(List<Reservation> reservationList) {
		this.reservationList = reservationList;
	}
   //-------------------------------------
	@OneToMany(mappedBy ="guest",fetch=FetchType.LAZY )
	private List<Bill> billList;
	
	public List<Bill> getBillList() {
		return billList;
	}
	
	public void setBillList(List<Bill> billList) {
		this.billList = billList;
	}

	public int getGuestId() {
		return guestId;
	}

	public void setGuestId(int guestId) {
		this.guestId = guestId;
	}

	//--------------------
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public long getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public long getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(long aadharNumber) {
		this.aadharNumber = aadharNumber;
	}

}