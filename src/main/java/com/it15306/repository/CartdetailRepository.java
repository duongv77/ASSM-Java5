package com.it15306.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.it15306.entity.Cartdetail;

@Repository
public interface CartdetailRepository extends JpaRepository<Cartdetail, Integer>{

}
