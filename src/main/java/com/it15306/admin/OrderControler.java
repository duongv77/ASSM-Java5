package com.it15306.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.it15306.dto.OrderDTO;
import com.it15306.entity.Order;
import com.it15306.entity.Orderdetail;
import com.it15306.mapper.OrderDetailMapper;
import com.it15306.mapper.OrderMapper;
import com.it15306.repository.OrderDetailRepositoty;
import com.it15306.repository.OrderRepository;

@Controller
@RequestMapping("/admin/order")
public class OrderControler {
	@Autowired private OrderRepository orderRepository;
	@Autowired private OrderMapper ordermapper;
	
	@Autowired private OrderDetailRepositoty orderdetailRepo;
	@Autowired private OrderDetailMapper orderdetalmapper;
	
	@GetMapping(value="/")
	public String index(Model model) {
		List<Order> listOrder = this.orderRepository.findAll();
		model.addAttribute("listOrder", listOrder);
		return "admin/order/orderadmin";
	}
	
	@GetMapping(value="/edit/{id}")
	public String edit(@PathVariable("id") Order entity, Model model) {
		OrderDTO orderDTO = ordermapper.convertToDTO(entity);
		
		List<Orderdetail> orderdetail = this.orderdetailRepo.finbyID(entity.getId());
		
		model.addAttribute("orderdetail", orderdetail);
		model.addAttribute("orderDTO", orderDTO);
		return "admin/order/updateorderadmin";
	}
}
