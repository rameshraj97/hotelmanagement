package com.chainsys.hotelManagement.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.hotelManagement.dao.HotelRepository;
import com.chainsys.hotelManagement.dao.HotelRepository;
import com.chainsys.hotelManagement.pojo.Hotel;
import com.chainsys.hotelManagement.pojo.Hotel;

@Service
public class HotelService {
	@Autowired
	private HotelRepository hotelRepositoryRepo;

	
	public List<Hotel> getHotel() {
		List<Hotel> listHotel = hotelRepositoryRepo.findAll();
		return listHotel;
	}
//-------------------------------------------
	public Hotel save(Hotel Hotel ) {

		return hotelRepositoryRepo.save(Hotel);
	}
//-----------------------------------------
	public Hotel findById(int id) {
		return hotelRepositoryRepo.findById(id);
	}
//-------------------------------------------
	public void deleteById(int id) {
		hotelRepositoryRepo.deleteById(id);
	}

}