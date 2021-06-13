package com.it15306.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.it15306.entity.Orderdetail;

@Repository
public interface OrderDetailRepositoty extends JpaRepository<Orderdetail, Integer>{
	@Query("SELECT entity FROM Orderdetail entity WHERE order.id = :id")
	List<Orderdetail> finbyID(@Param("id") Integer orderid);
}
