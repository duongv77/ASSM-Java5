package com.it15306.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.it15306.entity.Order;

public interface OrderRepository extends JpaRepository<Order, Integer> {
	@Query("SELECT entity FROM Order entity WHERE id= :id")
	public Order finById(@Param("id") Integer id);
}
