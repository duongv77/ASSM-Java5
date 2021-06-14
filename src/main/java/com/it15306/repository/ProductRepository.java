package com.it15306.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.it15306.entity.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
	@Query("SELECT entity FROM Product entity WHERE id = :id")
	public Product finById(@Param("id") Integer id);
	
	@Query("SELECT entity FROM Product entity WHERE entity.productype.id = :id")
	public List<Product> finByProducType(@Param("id") Integer id);
}
