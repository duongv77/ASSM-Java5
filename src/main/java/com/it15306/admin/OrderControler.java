package com.it15306.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.it15306.entity.Order;
import com.it15306.mapper.OrderMapper;
import com.it15306.repository.OrderRepository;

@Controller
@RequestMapping("/admin/order")
public class OrderControler {
	@Autowired private OrderRepository orderRepository;
	@Autowired private OrderMapper mapper;
	
	@GetMapping(value="/")
	public String index(Model model) {
		List<Order> listOrder = this.orderRepository.findAll();
		model.addAttribute("listOrder", listOrder);
		return "admin/order/orderadmin";
	}
}
