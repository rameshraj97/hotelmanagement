package com.chainsys.hotelManagement.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hotelManagement.pojo.Reservation;

	
	
	
public interface ReservationRepository extends CrudRepository<Reservation,Integer>{
	    Reservation findById(int id);
	    Reservation save(Reservation res);
	 // Used for both adding new Hotel and Modifying new Hotel   
	    void deleteById(int id);
	    List<Reservation> findAll();
}
