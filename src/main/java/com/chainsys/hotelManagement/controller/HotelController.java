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

import com.chainsys.hotelManagement.dto.GuestReservationDTO;
import com.chainsys.hotelManagement.dto.HotelReservationDTO;
import com.chainsys.hotelManagement.model.Hotel;
import com.chainsys.hotelManagement.service.HotelService;

@Controller
@RequestMapping("/hotel")
public class HotelController {
	
@Autowired
private HotelService  hotelService;


@GetMapping("/addform")
public String HotelAddForm(Model model)
{
    Hotel hotel = new Hotel();
    model.addAttribute("addhotel",hotel);
    return "add-hotel-form";
}
//----------------------------------------------------------------
@PostMapping("/add")
public String addnewHotel(@ModelAttribute("addhotel")Hotel hotel,Model model)
{
	 hotelService.save(hotel);
	 model.addAttribute("result","Successfully");
  return "redirect:/hotel/list";
}
//----------------------------------------------------------------
@GetMapping("/updateform")
public String showUpdateForm(@RequestParam("hotelid") int id,Model model)
{
    Hotel hotel= hotelService.findById(id);
    model.addAttribute("updatehotel", hotel);
    return "update-hotel";
}
//--------------------------------------------------------------------
@PostMapping("/updatehotel")
public String updateHotel(@ModelAttribute("updatehotel") Hotel hotel) {
	 hotelService.save(hotel);
    return "redirect:/hotel/list";
}
//--------------------------------------------------------------------
@GetMapping("/deletehotel")
public String deleteHotel(@RequestParam("hotelid") int id) {
	 hotelService.deleteById(id);
    return "redirect:/hotel/list";
}
//-------------------------------------------------------------------
@GetMapping("/findbyid")
public String findHotelById(@RequestParam("id") int id,Model model) {
    Hotel hotel=  hotelService.findById(id);
    model.addAttribute("findhotelbyid", hotel);
    return "find-hotel";
}
//----------------------------------------------------------------------
@GetMapping("/list")
public String getAllHotel(Model model)
{
    List <Hotel> hotellist = hotelService.getHotel();
    model.addAttribute("allhotel", hotellist);
    return "list-hotel";
}
//-----------------------one to many hotel
@GetMapping("/getreservationlist")
public String getHotelReservation(@RequestParam("id") int id, Model model) 
{
	HotelReservationDTO dto =  hotelService.getHotelReservation(id);
	model.addAttribute("gethotel", dto.getHotel());
	model.addAttribute("reservationdetails", dto.getReservationList());
	return "hotel-reservation";
}
}