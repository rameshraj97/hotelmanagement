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

import com.chainsys.hotelmanagements.model.Employee;
import com.chainsys.hotelmanagements.service.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;
	public static final String EMPLOYEELIST = "redirect:/employee/list";
	@GetMapping("/addform")
	public String employeeAddForm(Model model) {
		Employee employee = new Employee();
		model.addAttribute("addemployee", employee);
		return "add-employee-form";
	}


	@PostMapping("/add")
	public String addnewEmployee(@ModelAttribute("addemployee") Employee employee) {
		employeeService.save(employee);
		return "redirect:/employee/list";
	}


	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("employeeid") int id, Model model) {
		Employee employee = employeeService.findById(id);
		model.addAttribute("updateemployee", employee);
		return "update-employee";
	}


	@PostMapping("/updateemployee")
	public String updateEmployee(@ModelAttribute("updateemployee") Employee employee) {
		employeeService.save(employee);
		return "redirect:/employee/list";
	}


	@GetMapping("/deleteemployee")
	public String deleteEmployee(@RequestParam("employeeid") int id) {
		employeeService.deleteById(id);
		return "redirect:/employee/list";
	}


	@GetMapping("/findbyid")
	public String findEmployeeById(@RequestParam("id") int id, Model model) {
		Employee employee = employeeService.findById(id);
		model.addAttribute("findemployeebyid", employee);
		return "find-employee";
	}


	@GetMapping("/list")
	public String getAllEmployee(Model model) {
		List<Employee> employeelist = employeeService.getEmployee();
		model.addAttribute("allemployee", employeelist);
		return "list-employee";
	}

	@GetMapping("/login")
	public String Employeeform(Model model) {
		Employee theemp = new Employee();
		model.addAttribute("employee", theemp);
		return "Employeelogin";
	}

	@PostMapping("/userlogin")
	public String userLogin(@ModelAttribute("userlogin") Employee user3,Model model) {
		Employee user1 = employeeService.getEmpIdAndEmail(user3.getEmpId(), user3.getEmail());
		if (user1 != null) {
			return "redirect:/room/list";
		} else
			model.addAttribute("message", "Email or password mismatch");
			return "";
	}
}
