package com.it15306.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.it15306.entity.Cartdetail;

@Repository
public interface CartdetailRepository extends JpaRepository<Cartdetail, Integer>{
	@Query("SELECT entity FROM Cartdetail entity WHERE entity.product.id = :id")
	public Cartdetail finByIDproduc(@Param("id") Integer id);
	
	@Query("SELECT entity FROM Cartdetail entity WHERE entity.cart.id = :id")
	public List<Cartdetail> finByIdCart(@Param("id") Integer id);
}
