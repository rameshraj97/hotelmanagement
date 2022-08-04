package com.chainsys.hotelManagement.repository;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hotelManagement.model.Employee;
import com.chainsys.hotelManagement.model.Guest;
import com.chainsys.hotelManagement.model.Hotel;

public interface GuestRepository extends CrudRepository<Guest,Integer>{
    Guest findById(int id);
    Guest save(Guest gt);
 // Used for both adding new Hotel and Modifying new Hotel   
    void deleteById(int id);
    List<Guest> findAll();
}