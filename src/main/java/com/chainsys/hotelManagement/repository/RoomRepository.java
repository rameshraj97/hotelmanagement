package com.chainsys.hotelManagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hotelManagement.model.Room;
public interface RoomRepository extends CrudRepository<Room,Integer>{
		    Room findById(int id);
		    Room save(Room rm);
		    
		    void deleteById(int id);
		    List<Room> findAll();
	}


