package com.chainsys.hotelManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hotelManagement.model.Employee;
import com.chainsys.hotelManagement.repository.EmployeeRepository;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeRepository employeeRepositoryRepo;

	
	public List<Employee> getEmployee() {
		List<Employee> listemployee =employeeRepositoryRepo.findAll();
		return listemployee;
	}
//--------------------------------------
	public Employee save(Employee employee) {
		
      return employeeRepositoryRepo.save(employee);
	}
//------------------------------------
	public Employee findById(int id) {
		return employeeRepositoryRepo.findById(id);
//-----------------------------------
}
	public void deleteById(int id) {
		employeeRepositoryRepo.deleteById(id);
}
}