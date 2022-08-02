package com.chainsys.hotelManagement.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hotelManagement.pojo.Employee;
import com.chainsys.hotelManagement.pojo.Hotel;

public interface EmployeeRepository extends CrudRepository<Employee,Integer>{
    Employee findById(int id);
    Employee save(Employee hl);
 // Used for both adding new Hotel and Modifying new Hotel   
    void deleteById(int id);
    List<Employee> findAll();
    
}

