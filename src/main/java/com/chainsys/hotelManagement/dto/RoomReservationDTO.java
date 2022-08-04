package com.chainsys.hotelManagement.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.hotelManagement.model.Guest;
import com.chainsys.hotelManagement.model.Reservation;
import com.chainsys.hotelManagement.model.Room;

public class RoomReservationDTO {
	private Room room;
   private List<Reservation> reservationList= new ArrayList<Reservation>();
	
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}
	public List<Reservation> getReservationList() {
		return reservationList;
	}
	public void addReservation(Reservation reservation) {
		reservationList.add(reservation);
	}
}
