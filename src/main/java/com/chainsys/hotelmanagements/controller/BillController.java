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

import com.chainsys.hotelmanagements.model.Bill;
import com.chainsys.hotelmanagements.service.BillService;


@Controller
@RequestMapping("/bill")
public class BillController {
	@Autowired
	private BillService billService;
	
	public static final String LISTBILL = "redirect:/bill/list";
	
	@GetMapping("/addform")
	public String billAddForm(Model model)
	{
	    Bill bill = new Bill();
	    model.addAttribute("addbill",bill);
	    return "add-bill-form";
	}
	
	@PostMapping("/add")
	public String addnewBill(@ModelAttribute("addbill")Bill bill,Model model)
	{
		billService.save(bill);
	  model.addAttribute("result","Thank you");
	  return  LISTBILL;
	}
	
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("billid") int id,Model model)
	{
	    Bill bill=billService.findById(id);
	    model.addAttribute("updatebill",bill);
	    return "update-bill";
	}
	
	@PostMapping("/updatebill")
	public String updateBill(@ModelAttribute("updatebill") Bill bill) {
		billService.save(bill);
	    return LISTBILL;
	}

	@GetMapping("/deletehotel")
	public String deleteBill(@RequestParam("billid") int id) {
		billService.deleteById(id);
	    return LISTBILL;
	}
	
	@GetMapping("/findbyid")
	public String findBillById(@RequestParam("id") int id,Model model) {
	    Bill bill= billService.findById(id);
	    model.addAttribute("findbillbyid", bill);
	    return "find-bill";
	}
	@GetMapping("/list")
	public String getAllBill(Model model)
	{
	    List <Bill> billlist =billService.getBill();
	    model.addAttribute("allbill", billlist);
	   
	    return "list-bill";
	}
	}

