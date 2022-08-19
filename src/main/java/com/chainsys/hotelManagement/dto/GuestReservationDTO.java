package com.chainsys.hotelManagement.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.hotelManagement.model.Guest;
import com.chainsys.hotelManagement.model.Reservation;

public class GuestReservationDTO {
	private Guest guest;
	private List<Reservation> reservationList=new ArrayList<>();
	public Guest getGuest() {
		return guest;
	}
	public void setGuest(Guest guest) {
		this.guest = guest;
	}
	public List<Reservation> getReservationList() {
		return reservationList;
	}
	public void addReservation(Reservation reservation) {
		reservationList.add(reservation);
	}
	
}
