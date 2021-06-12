package com.it15306.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.it15306.entity.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
	
}
