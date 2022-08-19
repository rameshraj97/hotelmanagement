package com.chainsys.hotelmanagements.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hotelmanagements.dto.GuestBillDTO;
import com.chainsys.hotelmanagements.dto.GuestReservationDTO;
import com.chainsys.hotelmanagements.model.Bill;
import com.chainsys.hotelmanagements.model.Guest;
import com.chainsys.hotelmanagements.model.Reservation;
import com.chainsys.hotelmanagements.repository.BillRepository;
import com.chainsys.hotelmanagements.repository.GuestRepository;
import com.chainsys.hotelmanagements.repository.ReservationRepository;

@Service
public class GuestService {

	@Autowired
	private GuestRepository guestRepositoryRepo;

	@Autowired
	private ReservationRepository reservationRepository;

	@Autowired
	private BillRepository billRepository;

	public List<Guest> getGuest() {
		return guestRepositoryRepo.findAll();
	}

	
	public Guest save(Guest guest) {

		return guestRepositoryRepo.save(guest);
	}

	
	public Guest findById(int id) {
		return guestRepositoryRepo.findById(id);
	}

	
	public void deleteById(int id) {
		guestRepositoryRepo.deleteById(id);
	}

	public GuestReservationDTO getGuestReservation(int id) {
		Guest guest = findById(id);
		GuestReservationDTO guestReservationdto = new GuestReservationDTO();
		guestReservationdto.setGuest(guest);
		List<Reservation> reservationList = reservationRepository.findByGuestId(id);
		Iterator<Reservation> iterator = reservationList.iterator();
		while (iterator.hasNext()) {
			guestReservationdto.addReservation(iterator.next());
		}
		return guestReservationdto;
	}


	public GuestBillDTO getGuestBill(int id) {
		Guest guest = findById(id);
		GuestBillDTO guestBilldto = new GuestBillDTO();
		guestBilldto.setGuest(guest);
		List<Bill> billList = billRepository.findByGuestId(id);
		Iterator<Bill> iterator = billList.iterator();
		while (iterator.hasNext()) {
			guestBilldto.addBill(iterator.next());
		}
		return guestBilldto;
	}

	public Guest getGuestEmailAndPassword(String email, String string) {
		return guestRepositoryRepo.findByEmailAndPassword(email, string);
	}
}