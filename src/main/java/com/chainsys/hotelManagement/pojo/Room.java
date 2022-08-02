package com.chainsys.hotelManagement.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="room")
public class Room {
@Id
@Column(name="Room_id")
private int roomId;

@Column(name="Room_type")
private String roomType;

@Column(name="Capacity")
private String capacity;

@Column(name="Status")
private String status;

@Column(name="Pay_dayrate")
private int payDayrate;

@Column(name="With_toilet")
private String withToilet;

public int getRoomId() {
	return roomId;
}

public void setRoomId(int roomId) {
	this.roomId = roomId;
}

public String getRoomType() {
	return roomType;
}

public void setRoomType(String room_type) {
	this.roomType = room_type;
}

public String getCapacity() {
	return capacity;
}

public void setCapacity(String capacity) {
	this.capacity = capacity;
}

public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
}

public int getPayDayrate() {
	return payDayrate;
}

public void setPayDayrate(int payDayrate) {
	this.payDayrate = payDayrate;
}

public String getWithToilet() {
	return withToilet;
}

public void setWithToilet(String withToilet) {
	this.withToilet = withToilet;
}

}