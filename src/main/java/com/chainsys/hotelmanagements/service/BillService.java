package com.chainsys.hotelmanagements.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hotelmanagements.model.Bill;
import com.chainsys.hotelmanagements.repository.BillRepository;
@Service
public class BillService {
	@Autowired
	private BillRepository billRepositoryRepo;

	
	public List<Bill> getBill() {
		return billRepositoryRepo.findAll();
	}

	public Bill save(Bill bill ) {

		return billRepositoryRepo.save(bill);
	}
	
	public Bill findById(int id) {
		return billRepositoryRepo.findById(id);
	}	
	
	public void deleteById(int id) {
		billRepositoryRepo.deleteById(id);
	}
	public Bill getBillByReservationNumber(int id) {
		return billRepositoryRepo.findByReservationNumber(id);
	}
}
