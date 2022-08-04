package com.chainsys.hotelManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hotelManagement.model.Reservation;
import com.chainsys.hotelManagement.repository.ReservationRepository;

  @Service
   public class ReservationService {
	@Autowired
	private ReservationRepository reservationRepositoryRepo;

	public List<Reservation> getReservation() {
		List<Reservation> listreservation =reservationRepositoryRepo.findAll();
		return listreservation;
	}
 //--------------------------------------------
	public Reservation save(Reservation reservation) {

		return reservationRepositoryRepo.save(reservation);
	}
  //-------------------------------------------    
	public Reservation findById(int id) {
		return reservationRepositoryRepo.findById(id);
	}
//--------------------------------------------
	public void deleteById(int id) {
		reservationRepositoryRepo.deleteById(id);
	}

}