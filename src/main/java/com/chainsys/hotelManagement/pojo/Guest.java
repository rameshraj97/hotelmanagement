package com.chainsys.hotelManagement.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="guest")
public class Guest {
	@Id
	
@Column(name="Guest_id")	
private int guestId;
	
@Column(name="F_name")
private String firstName;

@Column(name="L_name")
private String lastName;

@Column(name="Phone_no")
private long phoneNo;

@Column(name="Address")
private String address;

@Column(name="Email")
private String email;

@Column(name="Gender")
private String gender;

@Column(name="Dob")
private  Date dob;

@Column(name="Aadhar_number")
private long aadharNumber;

public int getGuestId() {
	return guestId;
}

public void setGuestId(int guestId) {
	this.guestId = guestId;
}

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