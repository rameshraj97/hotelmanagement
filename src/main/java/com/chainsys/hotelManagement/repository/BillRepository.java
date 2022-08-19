package com.chainsys.hotelManagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hotelManagement.model.Bill;
public interface BillRepository extends CrudRepository<Bill,Integer>{
    Bill findById(int id);
    Bill save(Bill hl);
    void deleteById(int id);
    List<Bill> findAll();
    List<Bill> findByGuestId(int id);
    Bill findByReservationNumber(int id);
}
