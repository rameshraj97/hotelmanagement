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

import com.chainsys.hotelmanagements.model.Reservation;
import com.chainsys.hotelmanagements.service.ReservationService;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
@Autowired

public static final String RESERVATIONLIST = "redirect:/reservation/list";
private ReservationService reservationService ;

@GetMapping("/addform")
public String reservationAddForm(Model model)
{
    Reservation reservation = new  Reservation();
    model.addAttribute("addreservation",reservation);
    return "add-reservation-form";
}

@PostMapping("/add")
public String addnewReservation(@ModelAttribute("addreservation")Reservation reservation)
{
	reservationService.save(reservation);
  return RESERVATIONLIST;
}

@GetMapping("/updateform")
public String showUpdateForm(@RequestParam("id") int id,Model model)
{
    Reservation reservation=reservationService.findById(id);
    model.addAttribute("updatereservation", reservation);
    return "update-reservation";
}

@PostMapping("/updatereservation")
public String updateReservation(@ModelAttribute("updatereservation") Reservation reservation) {
	reservationService.save(reservation);
    return RESERVATIONLIST;
}

@GetMapping("/deletereservation")
public String deletereservation(@RequestParam("reservationid") int id) {
	reservationService.deleteById(id);
    return RESERVATIONLIST;
}

@GetMapping("/findreservationbyid")
public String findReservationById(@RequestParam("reservationid") int id,Model model) {
    Reservation reservation= reservationService.findById(id);
    model.addAttribute("findreservationbyid", reservation);
    return "find-reservation";
}

@GetMapping("/list")
public String getAllReservation(Model model)
{
    List <Reservation> reservationlist =reservationService.getReservation();
    model.addAttribute("allreservation", reservationlist);
    return "list-reservation";
}
}
