package com.it15306.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.it15306.entity.Productype;
import com.it15306.entity.User;

public interface ProductypeRepository extends JpaRepository<Productype, Integer> {
	@Query("SELECT entity FROM Productype entity")
	public User finByEmail();
}
