package com.chainsys.hotelManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hotelManagement.model.Bill;
import com.chainsys.hotelManagement.repository.BillRepository;
@Service
public class BillService {
	@Autowired
	private BillRepository billRepositoryRepo;

	
	public List<Bill> getBill() {
		List<Bill> listbill = billRepositoryRepo.findAll();
		return listbill;
	}
//---------------------------------------------
	public Bill save(Bill bill ) {

		return billRepositoryRepo.save(bill);
	}
	//-------------------------------------
	public Bill findById(int id) {
		return billRepositoryRepo.findById(id);
	}	
	//-------------------------------------
	public void deleteById(int id) {
		billRepositoryRepo.deleteById(id);
	}
	public Bill getBillByReservationNumber(int id) {
		return billRepositoryRepo.findByReservationNumber(id);
	}
}
