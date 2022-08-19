package com.chainsys.hotelmanagements.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.hotelmanagements.model.Bill;
import com.chainsys.hotelmanagements.model.Guest;

public class GuestBillDTO {
	private Guest guest;

	private List<Bill> billList=new ArrayList<>();
	public Guest getGuest() {
		return guest;
	}
	public void setGuest(Guest guest) {
		this.guest = guest;
	}
	public List<Bill> getBillList() {
		return billList;
	}
	public void addBill(Bill bill) {
		billList.add(bill);
	}
}
