package com.chainsys.hotelManagement.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hotelManagement.dto.GuestReservationDTO;
import com.chainsys.hotelManagement.dto.RoomReservationDTO;
import com.chainsys.hotelManagement.model.Guest;
import com.chainsys.hotelManagement.model.Reservation;
import com.chainsys.hotelManagement.model.Room;
import com.chainsys.hotelManagement.repository.ReservationRepository;
import com.chainsys.hotelManagement.repository.RoomRepository;

@Service
public class RoomService {
	@Autowired
	private RoomRepository roomRepositoryRepo;

	@Autowired
	private ReservationRepository reservationRepository;
	
	public List<Room> getRoom() {
		return roomRepositoryRepo.findAll();

	}

	public Room save(Room room) {

		return roomRepositoryRepo.save(room);
	}

	public Room findById(int id) {
		return roomRepositoryRepo.findById(id);
	}

	public void deleteById(int id) {
		roomRepositoryRepo.deleteById(id);
	}

	public RoomReservationDTO getRoomReservation(int id) {
        Room room = findById(id);
        RoomReservationDTO roomReservationdto = new RoomReservationDTO();
        roomReservationdto.setRoom(room);
        List<Reservation> reservationList = reservationRepository.findByRoomId(id);
        Iterator<Reservation> iterator = reservationList.iterator();
        while(iterator.hasNext()) {
            roomReservationdto.addReservation(iterator.next());
        }
        return roomReservationdto;
    }

}
