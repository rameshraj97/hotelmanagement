package com.chainsys.hotelManagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hotelManagement.model.Hotel;


	public interface HotelRepository extends CrudRepository<Hotel,Integer>{
	    Hotel findById(int id);
	    Hotel save(Hotel hl);
	 // Used for both adding new Hotel and Modifying new Hotel   
	    void deleteById(int id);
	    List<Hotel> findAll();
	    
}
