package com.it15306.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.it15306.entity.Product;
import com.it15306.repository.ProductRepository;

@Controller
@RequestMapping("/home/dienthoai")
public class Dienthoai {
	@Autowired private ProductRepository producRepo;
	
	@GetMapping(value="/")
	public String home(Model model) {
		List<Product> dtPro = this.producRepo.finByProducType(1);
		model.addAttribute("dtpro", dtPro);
		return "user/dienthoai";
	}
}
