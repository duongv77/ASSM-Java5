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
@RequestMapping("/home")
public class Home {
	@Autowired private ProductRepository producRepo;
	
	@GetMapping(value="/")
	public String home(Model model) {
		List<Product> dtPro = this.producRepo.finByProducType(1);
		List<Product> laptopPro = this.producRepo.finByProducType(2);
		List<Product> amthanhPro = this.producRepo.finByProducType(3);
		List<Product> donghoPro = this.producRepo.finByProducType(4);
		List<Product> cameraPro = this.producRepo.finByProducType(5);
		model.addAttribute("dtpro", dtPro);
		model.addAttribute("laptopPro", laptopPro);
		model.addAttribute("amthanhPro", amthanhPro);
		model.addAttribute("donghoPro", donghoPro);
		model.addAttribute("cameraPro", cameraPro);
		return "user/home";
	}
}
