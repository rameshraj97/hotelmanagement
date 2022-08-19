package com.chainsys.hotelmanagements.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hotelmanagements.model.Employee;

public interface EmployeeRepository extends CrudRepository<Employee,Integer>{
    Employee findById(int id);
    Employee save(Employee hl);
    void deleteById(int id);
    List<Employee> findAll();
    Employee findByEmail(String email);
    
}

