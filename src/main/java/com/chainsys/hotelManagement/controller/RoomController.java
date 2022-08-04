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
import com.chainsys.hotelManagement.dto.RoomReservationDTO;
import com.chainsys.hotelManagement.model.Hotel;
import com.chainsys.hotelManagement.model.Room;
import com.chainsys.hotelManagement.service.RoomService;

@Controller
@RequestMapping("/room")
public class RoomController {
@ Autowired
private RoomService roomService;
   
@GetMapping("/addform")
public String RoomAddFrom(Model model) {
	Room room= new Room();
	model.addAttribute("addroom",room);
	return"add-room-form";
}
//------------------------------------------
@PostMapping("/add")
public String addnewRoom(@ModelAttribute("addroom")Room room)
{
	roomService.save(room);
  return "redirect:/room/list";
}
//-------------------------------------------
@GetMapping("/updateform")
public String showUpdateForm(@RequestParam("roomid") int id,Model model)
{
    Room room=roomService.findById(id);
    model.addAttribute("updateroom", room);
    return "update-room";
}
//--------------------------------------------
@PostMapping("/updateroom")
public String updateRoom(@ModelAttribute("updateRoom") Room room) {
	roomService.save(room);
    return "redirect:/room/list";
}
//-------------------------------------------------
@GetMapping("/deleteroom")
public String deleteRoom(@RequestParam("roomid") int id) {
	roomService.deleteById(id);
    return "redirect:/room/list";
}
//-----------------------------------
@GetMapping("/findbyid")
public String findRoomById(@RequestParam("id") int id,Model model) {
    Room room= roomService.findById(id);
    model.addAttribute("findroombyid", room);
    return "find-room";
}
//------------------------------------
@GetMapping("/list")
public String getAllRoom(Model model)
{
    List <Room> roomlist =roomService.getRoom();
    model.addAttribute("allroom", roomlist);
    return "list-room";
}
//-------------------one to many
@GetMapping("/getreservationlist")
public String getRoomReservation(@RequestParam("id") int id, Model model) 
{
	RoomReservationDTO dto = roomService.getRoomReservation(id);
	model.addAttribute("getroom", dto.getRoom());
	model.addAttribute("reservationdetails", dto.getReservationList());
	return "room-reservation";
}
}
