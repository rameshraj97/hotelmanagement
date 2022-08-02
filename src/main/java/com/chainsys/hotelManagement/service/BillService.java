package com.chainsys.hotelManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hotelManagement.dao.BillRepository;
import com.chainsys.hotelManagement.dao.HotelRepository;
import com.chainsys.hotelManagement.pojo.Bill;
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

}
