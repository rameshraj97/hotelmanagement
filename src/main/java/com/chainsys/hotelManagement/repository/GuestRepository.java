package com.chainsys.hotelManagement.repository;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hotelManagement.model.Employee;
import com.chainsys.hotelManagement.model.Guest;

public interface GuestRepository extends CrudRepository<Guest,Integer>{
    Guest findById(int id);
    Guest save(Guest gt);
  
    void deleteById(int id);
    List<Guest> findAll();
    Guest findByEmailAndPassword(String email, String string);
}