package com.it15306.admin;

import java.util.List;

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

import com.it15306.dto.ProductDTO;
import com.it15306.entity.Product;
import com.it15306.entity.Productype;
import com.it15306.mapper.ProductMapper;
import com.it15306.repository.ProductRepository;

@Controller
@RequestMapping("/admin/product")
public class ProductController {
	@Autowired ProductRepository productRepo;
	@Autowired ProductMapper mapper;
	
	@GetMapping(value="/")
	public String index(Model model) {
		List<Product> listProduct = this.productRepo.findAll();
		model.addAttribute("listProduct", listProduct);
		return "admin/product/product";
	}
	
	@GetMapping(value="/add")
	public String create() {
		return "admin/product/addproduct";
	}
	
	@GetMapping(value="/edit/{id}")
	public String edit(@PathVariable("id") Product entity, Model model) {
		//ProductDTO prdDTO = mapper.convertToDTO(entity);
		model.addAttribute("product", entity);
		return "admin/product/editproduct";
	}
	
	@PostMapping(value="update/{id}")
	public String update(Model model, @Valid Product product, BindingResult result) {
		if ( result.hasErrors() ) {
			List<ObjectError> errors = result.getAllErrors();
			System.out.println(product.getId());
			System.out.println("true" + errors.get(0).getDefaultMessage());

			model.addAttribute("errors", errors);
			return "redirect:/admin/product/edit/"+product.getId();
			
		} else {
			//Product entity = mapper.convertToEntity(product);
			this.productRepo.save(product);
			return "redirect:/admin/product/";
		}
	}
}
