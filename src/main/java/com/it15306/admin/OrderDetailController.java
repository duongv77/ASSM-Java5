package com.it15306.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.it15306.dto.OrderdetailDTO;
import com.it15306.entity.Order;
import com.it15306.entity.Orderdetail;
import com.it15306.entity.Product;
import com.it15306.mapper.OrderDetailMapper;
import com.it15306.repository.OrderDetailRepositoty;
import com.it15306.repository.ProductRepository;

@Controller
@RequestMapping("admin/orderdetail")
public class OrderDetailController {
	@Autowired
	private OrderDetailRepositoty orderdetailRepo;
	
	@Autowired
	private OrderDetailMapper orderdetailmapper;
	
	@Autowired
	private ProductRepository productRepo;
	
	@Autowired 
	private HttpServletRequest request;
	
	@GetMapping(value = "/add")
	public String add() {
		return "/admin/order/createorderdetail";
	}
	
	@PostMapping(value = "/create")
	public String store(Model model, @Valid OrderdetailDTO orderdetail,BindingResult result) {
		Orderdetail entity = orderdetailmapper.convertToEntity(orderdetail);
		Order order =(Order) request.getSession().getAttribute("order");
		entity.setPrice(entity.getQuantity()*entity.getProduct().getPrice());
		entity.setOrder(order);
		System.out.println(order);
		this.orderdetailRepo.save(entity);
		return "redirect:admin/order/edit/"+order.getId();
	}
	
	@GetMapping(value = "/edit/{id}")
	public String edit(@PathVariable("id") Orderdetail ordetail , Model model ) {
		OrderdetailDTO orderdetailDTO = orderdetailmapper.convertToDTO(ordetail);
		model.addAttribute("ordertal",orderdetailDTO);
		return "admin/order/updateorderdetail";
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
			System.out.println(order.getId());
			Orderdetail entity = orderdetailmapper.convertToEntity(order);
			Product product = this.productRepo.finById(entity.getProduct().getId());
			
			entity.setPrice(entity.getQuantity()*product.getPrice());
			System.out.println(entity.getId());
			System.out.println(entity.getPrice());
			this.orderdetailRepo.save(entity);
			return "redirect:/admin/order/edit/"+entity.getOrder().getId();
		}
	}
	
	@GetMapping(value = "/delete/{id}")
	public String delete(@PathVariable("id") Orderdetail entity) {
		this.orderdetailRepo.delete(entity);
		return "redirect:/admin/order/edit/"+entity.getOrder().getId();
	}
}
