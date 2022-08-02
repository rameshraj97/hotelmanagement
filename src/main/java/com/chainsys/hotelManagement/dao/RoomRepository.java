package com.chainsys.hotelManagement.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hotelManagement.pojo.Hotel;
import com.chainsys.hotelManagement.pojo.Room;
public interface RoomRepository extends CrudRepository<Room,Integer>{
		    Room findById(int id);
		    Room save(Room rm);
		 // Used for both adding new Hotel and Modifying new Hotel   
		    void deleteById(int id);
		    List<Room> findAll();
		    
	}


