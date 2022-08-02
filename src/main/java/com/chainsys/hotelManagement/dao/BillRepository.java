package com.chainsys.hotelManagement.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hotelManagement.pojo.Bill;
public interface BillRepository extends CrudRepository<Bill,Integer>{
    Bill findById(int id);
    Bill save(Bill hl);
 // Used for both adding new Hotel and Modifying new Hotel   
    void deleteById(int id);
    List<Bill> findAll();
    
}
