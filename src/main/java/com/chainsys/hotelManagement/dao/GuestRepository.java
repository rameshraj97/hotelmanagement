package com.chainsys.hotelManagement.dao;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hotelManagement.pojo.Employee;
import com.chainsys.hotelManagement.pojo.Guest;
import com.chainsys.hotelManagement.pojo.Hotel;

public interface GuestRepository extends CrudRepository<Guest,Integer>{
    Guest findById(int id);
    Guest save(Guest gt);
 // Used for both adding new Hotel and Modifying new Hotel   
    void deleteById(int id);
    List<Guest> findAll();
}