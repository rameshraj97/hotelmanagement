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

import com.chainsys.hotelManagement.pojo.Employee;
import com.chainsys.hotelManagement.pojo.Hotel;
import com.chainsys.hotelManagement.service.EmployeeService;
import com.chainsys.hotelManagement.service.HotelService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
@Autowired
private EmployeeService employeeService;


@GetMapping("/addform")
public String EmployeeAddForm(Model model)
{
    Employee employee = new Employee();
    model.addAttribute("addemployee",employee);
    return "add-employee-form";
}
//--------------------------------------------------
@PostMapping("/add")
public String addnewEmployee(@ModelAttribute("addemployee")Employee employee)
{
	employeeService.save(employee);
  return "redirect:/employee/list";
}
//---------------------------------------------
@GetMapping("/updateform")
public String showUpdateForm(@RequestParam("employeeid") int id,Model model)
{
    Employee employee=employeeService.findById(id);
    model.addAttribute("updateemployee", employee);
    return "update-employee";
}
//-----------------------------------------
@PostMapping("/updateemployee")
public String updateEmployee(@ModelAttribute("updateemployee") Employee employee) {
	employeeService.save(employee);
    return "redirect:/employee/list";
}
//-----------------------------------------------------
@GetMapping("/deleteemployee")
public String deleteEmployee(@RequestParam("employeeid") int id) {
	employeeService.deleteById(id);
    return "redirect:/employee/list";
}
//-------------------------------------------------
@GetMapping("/findbyid")
public String findEmployeeById(@RequestParam("id") int id,Model model) {
    Employee employee= employeeService.findById(id);
    model.addAttribute("findemployeebyid", employee);
    return "find-employee";
}
//----------------------------------------------------------
@GetMapping("/list")
public String getAllEmployee(Model model)
{
    List <Employee> employeelist =employeeService.getEmployee();
    model.addAttribute("allemployee", employeelist);
    return "list-employee";
}
}