package com.it15306.admin;

import java.util.List;
import java.util.Optional;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
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

import com.it15306.dto.OrderDTO;
import com.it15306.entity.Order;
import com.it15306.entity.Orderdetail;
import com.it15306.entity.User;
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
	
	@Autowired private HttpServletRequest request;
	
	@GetMapping(value="/")
	public String index(Model model) {
		List<Order> listOrder = this.orderRepository.findAll();
		model.addAttribute("listOrder", listOrder);
		return "admin/order/orderadmin";
	}
	
	@GetMapping(value="/edit/{id}")
	public String edit(@PathVariable("id") Order entity, Model model) {
		request.getSession().setAttribute("order", "");
		request.getSession().setAttribute("order", entity);
		OrderDTO orderDTO = ordermapper.convertToDTO(entity);
		
		List<Orderdetail> orderdetail = this.orderdetailRepo.finbyID(entity.getId());
		
		model.addAttribute("orderdetail", orderdetail);
		model.addAttribute("order", orderDTO);
		return "admin/order/updateorderadmin";
	}
	
	@PostMapping(value = "/update/{id}")
	public String update(Model model, @Valid OrderDTO order, BindingResult result) {
		if ( result.hasErrors() ) {
			List<ObjectError> errors = result.getAllErrors();
			System.out.println(order.getId());
			System.out.println("true" + errors.get(0).getDefaultMessage());

			model.addAttribute("errors", errors);
			return "redirect:/admin/order/";
			
		} else {
			Order entity = ordermapper.convertToEntity(order);
			String time = java.time.LocalDateTime.now()+"";
			entity.setCreateDate(time);
			Order entity2= orderRepository.finById(entity.getId());
			entity.setUser(entity2.getUser());
			this.orderRepository.save(entity);
			return "redirect:/admin/order/edit/"+entity.getId() ;
		}
	}
}
