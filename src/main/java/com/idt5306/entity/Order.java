package com.idt5306.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Component
@Table(name = "oders")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name ="id")
	private Integer id;
	
	@Column(name = "create_date")
	private String createDate;
	
	@Column(name = "address")
	private String address;
	
	@ManyToOne
	@JoinColumn(
			name="user_id",
			nullable = false,
			referencedColumnName = "id"
	)
	private User user;
	
	@OneToOne(mappedBy = "user")
	private Orderdetail orderdetail;
}
