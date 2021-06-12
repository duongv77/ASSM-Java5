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

import com.id15306.dto.ProductypeDTO;
import com.it15306.entity.Productype;
import com.it15306.mapper.ProducTypeMapper;
import com.it15306.repository.ProductypeRepository;

@Controller
@RequestMapping("/admin/productype")
public class ProductypeCotroller {
	@Autowired
	private ProductypeRepository producTypeRepo;
	
	@Autowired
	private ProducTypeMapper mapper;
	
	@GetMapping(value="/")
	public String index(Model model) {
		List<Productype> listProducType = this.producTypeRepo.findAll();
		model.addAttribute("listProducType",listProducType);
		return "admin/productype/adminproductype";
	}
	
	@GetMapping(value="/add")
	public String create() {
		return "admin/productype/adminproductypeadd";
	}
	
	@PostMapping(value="/store")
	public String store(Model model, @Valid ProductypeDTO productype, BindingResult result) {
		Productype entity = mapper.convertToEntity(productype);
		this.producTypeRepo.save(entity);
		return "redirect:/admin/productype/";
	}
	
	@GetMapping(value="/edit/{id}")
	public String edit(@PathVariable("id") Productype entity,Model model) {
		ProductypeDTO prdtDTO = mapper.convertToDTO(entity);
		model.addAttribute("productype", prdtDTO);
		return "admin/productype/productypeedit";
	}
	
	@PostMapping(value="/update/{id}")
	public String update(Model model, @Valid ProductypeDTO productype, BindingResult result) {
		if ( result.hasErrors() ) {
			List<ObjectError> errors = result.getAllErrors();
			System.out.println(productype.getId());
			System.out.println("true" + errors.get(0).getDefaultMessage());

			model.addAttribute("errors", errors);
			return "redirect:/admin/user/edit/"+productype.getId();
			
		} else {
			Productype entity = mapper.convertToEntity(productype);
			this.producTypeRepo.save(entity);
			return "redirect:/admin/productype/";
		}
	}
	@GetMapping(value = "delete/{id}")
	public String delete(@PathVariable("id") Productype entity) {
		this.producTypeRepo.delete(entity);
		return "redirect:/admin/productype/";
	}
}
