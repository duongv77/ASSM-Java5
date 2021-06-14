package com.it15306.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.it15306.entity.Cart;
import com.it15306.entity.Cartdetail;

@Repository
public interface GiohangRepository extends JpaRepository<Cartdetail, Integer>{
	@Query("SELECT entity FROM Cartdetail entity WHERE entity.cart.id =:id")
	public List<Cartdetail> finById(@Param("id") Integer id);
	
	@Query("SELECT entity FROM Cart entity WHERE entity.user.id = :id")
	public Cart finbyIDuser(@Param("id") Integer id);
}
