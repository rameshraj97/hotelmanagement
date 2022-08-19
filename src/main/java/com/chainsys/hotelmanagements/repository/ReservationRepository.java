package com.chainsys.hotelmanagements.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hotelmanagements.model.Reservation;

	
	
	
public interface ReservationRepository extends CrudRepository<Reservation,Integer>{
	    Reservation findById(int id);
	    Reservation save(Reservation res);
	    void deleteById(int id);
	    List<Reservation> findAll();
	    List<Reservation> findByGuestId(int id);
	    List<Reservation> findByRoomId(int id);
}
