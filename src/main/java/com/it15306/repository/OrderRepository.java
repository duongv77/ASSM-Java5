package com.it15306.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.it15306.entity.Order;

public interface OrderRepository extends JpaRepository<Order, Integer> {

}
