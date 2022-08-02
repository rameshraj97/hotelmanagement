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

import com.chainsys.hotelManagement.pojo.Hotel;
import com.chainsys.hotelManagement.service.HotelService;

@Controller
@RequestMapping("/hotel")
public class HotelController {
	
@Autowired
private HotelService  HotelService;


@GetMapping("/addform")
public String HotelAddForm(Model model)
{
    Hotel hotel = new Hotel();
    model.addAttribute("addhotel",hotel);
    return "add-hotel-form";
}
//----------------------------------------------------------------
@PostMapping("/add")
public String addnewHotel(@ModelAttribute("addhotel")Hotel hotel)
{
	HotelService.save(hotel);
  return "redirect:/hotel/list";
}
//----------------------------------------------------------------
@GetMapping("/updateform")
public String showUpdateForm(@RequestParam("hotelid") int id,Model model)
{
    Hotel hotel=HotelService.findById(id);
    model.addAttribute("updatehotel", hotel);
    return "update-hotel";
}
//--------------------------------------------------------------------
@PostMapping("/updatehotel")
public String updateHotel(@ModelAttribute("updatehotel") Hotel hotel) {
	HotelService.save(hotel);
    return "redirect:/hotel/list";
}
//--------------------------------------------------------------------
@GetMapping("/deletehotel")
public String deleteHotel(@RequestParam("hotelid") int id) {
	HotelService.deleteById(id);
    return "redirect:/hotel/list";
}
//-------------------------------------------------------------------
@GetMapping("/findbyid")
public String findHotelById(@RequestParam("id") int id,Model model) {
    Hotel hotel= HotelService.findById(id);
    model.addAttribute("findhotelbyid", hotel);
    return "find-hotel";
}
//----------------------------------------------------------------------
@GetMapping("/list")
public String getAllHotel(Model model)
{
    List <Hotel> hotellist =HotelService.getHotel();
    model.addAttribute("allhotel", hotellist);
    return "list-hotel";
}
}