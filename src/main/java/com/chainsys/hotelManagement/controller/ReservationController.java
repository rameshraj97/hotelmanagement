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

import com.chainsys.hotelManagement.pojo.Reservation;
import com.chainsys.hotelManagement.service.ReservationService;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
@Autowired
private ReservationService reservationService ;

@GetMapping("/addform")
public String ReservationAddForm(Model model)
{
    Reservation reservation = new  Reservation();
    model.addAttribute("addreservation",reservation);
    return "add-reservation-form";
}
//--------------------------------------
@PostMapping("/add")
public String addnewReservation(@ModelAttribute("addreservation")Reservation reservation)
{
	reservationService.save(reservation);
  return "redirect:/reservation/list";
}
//-------------------------------------
@GetMapping("/updateform")
public String showUpdateForm(@RequestParam("id") int id,Model model)
{
    Reservation reservation=reservationService.findById(id);
    model.addAttribute("updatereservation", reservation);
    return "update-reservation";
}
//-------------------------------------------
@PostMapping("/updatereservation")
public String updateReservation(@ModelAttribute("updatereservation") Reservation reservation) {
	reservationService.save(reservation);
    return "redirect:/reservation/list";
}
//---------------------------------------
@GetMapping("/deletereservation")
public String deletereservation(@RequestParam("reservationid") int id) {
	reservationService.deleteById(id);
    return "redirect:/reservation/list";
}
//-------------------------------------------------------------------
@GetMapping("/findreservationbyid")
public String findReservationById(@RequestParam("reservationid") int id,Model model) {
    Reservation reservation= reservationService.findById(id);
    model.addAttribute("findreservationbyid", reservation);
    return "find-reservation";
}
//----------------------------------------------------------------------
@GetMapping("/list")
public String getAllReservation(Model model)
{
    List <Reservation> reservationlist =reservationService.getReservation();
    model.addAttribute("allreservation", reservationlist);
    return "list-reservation";
}
}
