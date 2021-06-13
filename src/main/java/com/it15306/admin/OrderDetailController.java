package com.it15306.admin;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.it15306.dto.OrderdetailDTO;
import com.it15306.entity.Order;
import com.it15306.entity.Orderdetail;
import com.it15306.entity.User;
import com.it15306.mapper.OrderDetailMapper;
import com.it15306.repository.OrderDetailRepositoty;

@Controller
@RequestMapping("admin/orderdetail")
public class OrderDetailController {
	@Autowired
	private OrderDetailRepositoty orderdetailRepo;
	
	@Autowired
	private OrderDetailMapper orderdetailmapper;
	
	public String edit(@PathVariable("id") Orderdetail ordetail , Model model ) {
		OrderdetailDTO orderdetailDTO = orderdetailmapper.convertToDTO(ordetail);
		model.addAttribute(orderdetailDTO);
		return "";
	}
	
	@PostMapping(value="/update/{id}")
	public String update(Model model, @Valid OrderdetailDTO order, BindingResult result) {
		if ( result.hasErrors() ) {
			List<ObjectError> errors = result.getAllErrors();
			System.out.println(order.getId());
			System.out.println("true" + errors.get(0).getDefaultMessage());

			model.addAttribute("errors", errors);
			return "redirect:/admin/orderdetail/edit/"+order.getId();
			
		} else {
			Orderdetail entity = orderdetailmapper.convertToEntity(order);
			this.orderdetailRepo.save(entity);
			return "redirect:/admin/order/";
		}
	}
}
