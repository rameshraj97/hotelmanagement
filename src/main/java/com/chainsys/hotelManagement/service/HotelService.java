//package com.chainsys.hotelManagement.service;
//
//import java.util.Date;
//import java.util.Iterator;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import com.chainsys.hotelManagement.dto.GuestReservationDTO;
//import com.chainsys.hotelManagement.dto.HotelReservationDTO;
//import com.chainsys.hotelManagement.dto.HotelRoomDTO;
//import com.chainsys.hotelManagement.model.Guest;
//import com.chainsys.hotelManagement.model.Hotel;
//import com.chainsys.hotelManagement.model.Reservation;
//import com.chainsys.hotelManagement.model.Room;
//import com.chainsys.hotelManagement.repository.HotelRepository;
//import com.chainsys.hotelManagement.repository.ReservationRepository;
//import com.chainsys.hotelManagement.repository.RoomRepository;
//
//@Service
//public class HotelService {
//	
//	 @Autowired private HotelRepository hotelRepositoryRepo;
//	
//	@Autowired
//	private RoomRepository roomRepository;
//
//	@Autowired//-----dto object create
//	private ReservationRepository reservationRepository;
//	
//	public List<Hotel> getHotel() {
//		List<Hotel> listHotel = hotelRepositoryRepo.findAll();
//		return listHotel;
//	}
////-------------------------------------------
//	public Hotel save(Hotel Hotel ) {
//
//		return hotelRepositoryRepo.save(Hotel);
//	}
////-----------------------------------------
//	public Hotel findById(int id) {
//		return hotelRepositoryRepo.findById(id);
//	}
////-------------------------------------------
//	public void deleteById(int id) {
//		hotelRepositoryRepo.deleteById(id);
//	}
//	/*}
//
//	  public HotelReservationDTO getHotelReservation(int id) { Hotel hotel =
//	 findById(id); HotelReservationDTO hotelReservationdto = new
//	 HotelReservationDTO(); hotelReservationdto.setHotel(hotel); List<Reservation>
//	 reservationList = reservationRepository.findByHotelId( id);
//	 Iterator<Reservation> iterator = reservationList.iterator();
//	 while(iterator.hasNext()) {
//	 hotelReservationdto.addReservation((Reservation)iterator.next()); } return
//	 hotelReservationdto; }*/
//	
//	
//	public HotelRoomDTO getHotelAndRoom(int id) {
//		Hotel hotel = findById(id);
//		HotelRoomDTO hotelRoomDto = new HotelRoomDTO();
//		hotelRoomDto.setHotel(hotel);
//	
//		return hotelRoomDto;
//	}
//
//}