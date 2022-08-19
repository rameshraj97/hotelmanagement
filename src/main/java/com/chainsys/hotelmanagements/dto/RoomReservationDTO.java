package com.chainsys.hotelmanagements.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.hotelmanagements.model.Reservation;
import com.chainsys.hotelmanagements.model.Room;

public class RoomReservationDTO {
	private Room room;
   private List<Reservation> reservationList= new ArrayList<>();
	
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
