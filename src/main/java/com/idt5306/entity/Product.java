package com.idt5306.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Component
@Table(name = "products")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "price")
	private Integer price;
	
	@Column(name = "create_date")
	private Date datetime;
	
	@Column(name = "available")
	private Integer availabe;
	
	@Column(name = "image")
	private String image;
	
	@ManyToOne
	private Orderdetail orderdetal;
	
	@ManyToOne
	@JoinColumn(
				name = "producer_id",
				nullable = false,
				referencedColumnName = "id"
			)
	private Producer producer;
}
