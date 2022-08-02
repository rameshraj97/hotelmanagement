package com.chainsys.hotelManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hotelManagement.dao.GuestRepository;
import com.chainsys.hotelManagement.dao.HotelRepository;
import com.chainsys.hotelManagement.pojo.Guest;
import com.chainsys.hotelManagement.pojo.Hotel;
@Service
public class GuestService {
	

		@Autowired
		private GuestRepository guestRepositoryRepo;

		
		public List<Guest> getGuest() {
			List<Guest> listguest = guestRepositoryRepo.findAll();
			return listguest;
		}
	//-------------------------------------------
		public Guest save(Guest guest ) {

			return guestRepositoryRepo.save(guest);
		}
	//-----------------------------------------
		public Guest findById(int id) {
			return guestRepositoryRepo.findById(id);
		}
	//-------------------------------------------
		public void deleteById(int id) {
			guestRepositoryRepo.deleteById(id);
		}

	}