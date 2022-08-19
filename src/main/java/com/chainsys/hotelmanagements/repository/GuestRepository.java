package com.chainsys.hotelmanagements.repository;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hotelmanagements.model.Guest;

public interface GuestRepository extends CrudRepository<Guest,Integer>{
    Guest findById(int id);
    Guest save(Guest gt);
  
    void deleteById(int id);
    List<Guest> findAll();
    Guest findByEmailAndPassword(String email, String string);
}