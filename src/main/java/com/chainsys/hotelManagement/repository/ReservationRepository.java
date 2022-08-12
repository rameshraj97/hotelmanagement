package com.chainsys.hotelManagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hotelManagement.model.Reservation;

	
	
	
public interface ReservationRepository extends CrudRepository<Reservation,Integer>{
	    Reservation findById(int id);
	    Reservation save(Reservation res);
	 // Used for both adding new Hotel and Modifying new Hotel   
	    void deleteById(int id);
	    List<Reservation> findAll();
	    List<Reservation> findByGuestId(int id);
	    //List<Reservation> findByHotelId(int id);
	    List<Reservation> findByRoomId(int id);
}
