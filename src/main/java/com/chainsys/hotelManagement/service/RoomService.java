package com.chainsys.hotelManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hotelManagement.dao.RoomRepository;
import com.chainsys.hotelManagement.pojo.Room;

@Service
public class RoomService {
	@Autowired
	private RoomRepository roomRepositoryRepo;

	public List<Room> getRoom() {
		List<Room> listroom = roomRepositoryRepo.findAll();
		return listroom;

	}
//------------------------------------
	public Room save(Room room) {

		return roomRepositoryRepo.save(room);
	}
//-------------------------------------
	public Room findById(int id) {
		return roomRepositoryRepo.findById(id);
	}
//-------------------------------------
	public void deleteById(int id) {
		roomRepositoryRepo.deleteById(id);
	}
}
