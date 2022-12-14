package com.chainsys.hotelmanagements.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hotelmanagements.businesslogics.Logic;
import com.chainsys.hotelmanagements.model.Bill;
import com.chainsys.hotelmanagements.model.Reservation;
import com.chainsys.hotelmanagements.model.Room;
import com.chainsys.hotelmanagements.repository.ReservationRepository;

  @Service
   public class ReservationService {
	@Autowired
	private ReservationRepository reservationRepositoryRepo;
	@Autowired
	private RoomService roomService;
	@Autowired
	private BillService billService;
	public List<Reservation> getReservation() {
		return reservationRepositoryRepo.findAll();
	}
 
	public Reservation save(Reservation reservation) {
		reservation=reservationRepositoryRepo.save(reservation);
		Bill bill=new Bill();
		bill.setGuestId(reservation.getGuestId());
		Room room =roomService.findById(reservation.getRoomId());
		bill.setRoomCharge(room.getPayDayrate());
		bill.setInvoiceDate(Logic.getInstanceDate());
		bill.setReservationNumber(reservation.getReservationNumber());
		bill.setPaymentMode(reservation.getPaymentStatus());
		billService.save(bill);
		return reservation;
	}
      
	public Reservation findById(int id) {
		return reservationRepositoryRepo.findById(id);
	}

	public void deleteById(int id) {
		reservationRepositoryRepo.deleteById(id);
	}

}