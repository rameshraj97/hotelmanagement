package com.chainsys.hotelManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.hotelManagement.businesslogic.Logic;
import com.chainsys.hotelManagement.model.Bill;
import com.chainsys.hotelManagement.model.Guest;
import com.chainsys.hotelManagement.model.Login;
import com.chainsys.hotelManagement.model.Reservation;
import com.chainsys.hotelManagement.model.Room;
import com.chainsys.hotelManagement.service.GuestService;
import com.chainsys.hotelManagement.service.ReservationService;
import com.chainsys.hotelManagement.service.RoomService;
import com.chainsys.hotelManagement.service.BillService;

@Controller
@RequestMapping("/home")
public class HomeController {
	@Autowired
	private GuestService guestService;
	@Autowired
	private ReservationService reservationService ;
	@Autowired
	private RoomService roomService;
	@Autowired
	private BillService billService;
	@GetMapping("/guestlogin")
	public String getGuestForm(@RequestParam("roomId")int id,Model model) {
		Login login=new Login();
		login.setRoomId(id);
		model.addAttribute("login", login);
		model.addAttribute("roomId", id);
		return "guest-login-form";
	}
	@GetMapping("/list")
	public String getAllRoom(Model model)
	{	
	
		List <Room> roomlist =roomService.getRoom();
		List <Room> availableRoom=Logic.getAvailableroomList(roomlist);
	    model.addAttribute("allroom", availableRoom);
	    return "list-room";
	}
	@PostMapping("/checkguestlogin")
	public String checkingGuestAccess(@ModelAttribute("login") Login login,Model model) {
		     System.out.println(login.getRoomId());
		Guest guestuser = guestService.getGuestEmailAndPassword(login.getEmail(), login.getPassword());
		if (guestuser != null) {
			Reservation reservation = new  Reservation();
			model.addAttribute("roomId", login.getRoomId());
		    System.out.println(login.getRoomId());
			model.addAttribute("guestId", guestuser.getGuestId());
		    model.addAttribute("addreservation",reservation);
		    return"add-reservation-form";
		    
		} else
			model.addAttribute("message", "Email or password mismatch");
			return "guest-login-form";
	}
	
	@PostMapping("/add")
	public String addnewReservation(@ModelAttribute("addreservation")Reservation reservation,Model model)
	{
		reservationService.save(reservation);
		Bill bill=billService.getBillByReservationNumber(reservation.getReservationNumber());

		model.addAttribute("bill", bill);
	  return "find-bill";
	}
	@PostMapping("/bookedDetails")
	public String bookedDetails(@ModelAttribute("bill")Bill bill,Model model) {
		System.out.println(bill.getInvoiceStatus());
		billService.save(bill);
		System.out.println(bill);
		Guest guest=guestService.findById(bill.getGuestId());
		System.out.println(bill.getReservationNumber());
		Reservation reservation=reservationService.findById(bill.getReservationNumber());
		System.out.println(reservation.getReservationNumber());
		Room room=roomService.findById(reservation.getRoomId());
		System.out.println(room.getRoomId());
		room.setStatus("unavailable");
		roomService.save(room);
		System.out.println(room.getStatus());
		model.addAttribute("getguest", guest);
		model.addAttribute("reservationdetails", reservation);
		return "guest-reservation";
	}
}
