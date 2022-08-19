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
		return employeeRepositoryRepo.findAll();
	}

	public Employee save(Employee employee) {
		
      return employeeRepositoryRepo.save(employee);
	}
	public Employee findById(int id) {
		return employeeRepositoryRepo.findById(id);

}
	public void deleteById(int id) {
		employeeRepositoryRepo.deleteById(id);
}
	public Employee getEmpIdAndEmail(int empId, String email) {
		Employee user =employeeRepositoryRepo.findById(empId);
        if(!email.equals(user.getEmail())) {
        	user=null;      
        }
           return user;
       }
}