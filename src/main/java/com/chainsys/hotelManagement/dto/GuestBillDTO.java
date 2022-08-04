package com.chainsys.hotelManagement.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.hotelManagement.model.Bill;
import com.chainsys.hotelManagement.model.Guest;

public class GuestBillDTO {
	private Guest guest;

	private List<Bill> billList=new ArrayList<Bill>();
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
