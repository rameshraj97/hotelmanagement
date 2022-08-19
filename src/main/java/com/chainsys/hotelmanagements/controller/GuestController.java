package com.chainsys.hotelmanagements.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.hotelmanagements.dto.GuestBillDTO;
import com.chainsys.hotelmanagements.dto.GuestReservationDTO;
import com.chainsys.hotelmanagements.model.Guest;
import com.chainsys.hotelmanagements.service.GuestService;

@Controller
@RequestMapping("/guest")
public class GuestController {

	@Autowired
	private GuestService guestService;

	@GetMapping("/addform")
	public String guestAddForm(Model model) {
		Guest guest = new Guest();
		model.addAttribute("addguest", guest);
		return "add-guest-form";
	}

	@PostMapping("/add")
	public String addnewguest(@ModelAttribute("addguest") Guest guest, Model model  ) 
		 {
		guestService.save(guest);	
		model.addAttribute("result", " Successfully...");
		return "redirect:/home/list";
	}


	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("guestid") int id, Model model) {
		Guest guest = guestService.findById(id);
		model.addAttribute("updateguest", guest);
		return "update-guest";
	}


	@PostMapping("/updateguest")
	public String updateguest(@ModelAttribute("updateguest") Guest guest, Model model) {
		guestService.save(guest);
		model.addAttribute("result", " Changed");
		return "update-guest";
	}


	@GetMapping("/deleteguest")
	public String deleteguest(@RequestParam("guestid") int id) {
		guestService.deleteById(id);
		return "redirect:/guest/list";
	}


	@GetMapping("/findbyid")
	public String findGuestById(@RequestParam("id") int id, Model model) {
		Guest guest = guestService.findById(id);
		model.addAttribute("findguestbyid", guest);
		return "find-guest";
	}


	@GetMapping("/list")
	public String getAllGuest(Model model) {
		List<Guest> guestlist = guestService.getGuest();
		model.addAttribute("allguest", guestlist);
		return "list-guest";
	}

 
	@GetMapping("/getreservationlist")
	public String getGuestReservation(@RequestParam("id") int id, Model model) {
		GuestReservationDTO dto = guestService.getGuestReservation(id);
		model.addAttribute("getguest", dto.getGuest());
		model.addAttribute("reservationdetails", dto.getReservationList());
		return "guest-reservation";
	}

	@GetMapping("/getbilllist")
	public String getGuestBill(@RequestParam("id") int id, Model model) {
		GuestBillDTO dto = guestService.getGuestBill(id);
		model.addAttribute("getguest", dto.getGuest());
		model.addAttribute("billdetails", dto.getBillList());
		return "guest-bill";
	}
}