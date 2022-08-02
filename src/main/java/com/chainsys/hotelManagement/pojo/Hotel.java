package com.chainsys.hotelManagement.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="hotel")
public class Hotel {
@Id
@Column(name="Hotel_id")
private int hotelId;

@Column(name="Hotel_name")
private String hotelName;

@Column(name="Location")
private String location;

@Column(name="address")
private String address;

@Column(name="Num_rooms")
private int numberOfRooms;

@Column(name="Phone_no")
private long phoneNo;

@Column(name="Website")
private String website;

public int getHotelId() {
	return hotelId;
}

public void setHotelId(int hotelId) {
	this.hotelId = hotelId;
}

public String getHotelName() {
	return hotelName;
}

public void setHotelName(String hotelName) {
	this.hotelName = hotelName;
}

public String getLocation() {
	return location;
}

public void setLocation(String location) {
	this.location = location;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public int getNumberOfRooms() {
	return numberOfRooms;
}

public void setNumberOfRooms(int numberOfRooms) {
	this.numberOfRooms = numberOfRooms;
}

public long getPhoneNo() {
	return phoneNo;
}

public void setPhoneNo(long phoneNo) {
	this.phoneNo = phoneNo;
}

public String getWebsite() {
	return website;
}

public void setWebsite(String website) {
	this.website = website;
}

}