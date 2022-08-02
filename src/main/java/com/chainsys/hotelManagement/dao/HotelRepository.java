package com.chainsys.hotelManagement.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hotelManagement.pojo.Hotel;


	public interface HotelRepository extends CrudRepository<Hotel,Integer>{
	    Hotel findById(int id);
	    Hotel save(Hotel hl);
	 // Used for both adding new Hotel and Modifying new Hotel   
	    void deleteById(int id);
	    List<Hotel> findAll();
	    
}
