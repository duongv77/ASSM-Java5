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
@RequestMapping("/home/mayanh")
public class Mayanh {
@Autowired private ProductRepository producRepo;
	
	@GetMapping(value="/")
	public String home(Model model) {
		List<Product> cameraPro = this.producRepo.finByProducType(5);
		model.addAttribute("cameraPro", cameraPro);
		return "user/mayanh";
	}
}
