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

import com.id15306.dto.UserDTO;
import com.it15306.entity.User;
import com.it15306.libs.HashUtil;
import com.it15306.mapper.UserMapper;
import com.it15306.repository.UserRepository;

@Controller
@RequestMapping("/admin/user")
public class UserController {
	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private UserMapper mapper;
	
	@GetMapping(value="")
	public String index(Model model) {
		List<User> listUser = this.userRepo.findAll();
		model.addAttribute("listUser", listUser);
		return "admin/user/adminuser";
	}
	
	@GetMapping(value="/add")
	public String create() {
		return "admin/user/adminadduser";
	}
	
	@PostMapping(value="/store")
	public String store(Model model, @Valid UserDTO user, BindingResult result) {
		User entity = mapper.convertToEntity(user);
		entity.setPassword(HashUtil.hash(user.getPassword()));
		this.userRepo.save(entity);
		return "redirect:/admin/user";
	}
	
	@GetMapping(value="/edit/{id}")
	public String edit(@PathVariable("id") User entitty, Model model) {
		UserDTO userDTO = mapper.convertToDTO(entitty);
		model.addAttribute("user", userDTO);
		return "admin/user/adminuseredit";
	}
	
	@PostMapping(value="/update/{id}")
	public String update(Model model, @Valid UserDTO user, BindingResult result) {
		if ( result.hasErrors() ) {
			List<ObjectError> errors = result.getAllErrors();
			System.out.println(user.getId());
			System.out.println("true" + errors.get(0).getDefaultMessage());

			model.addAttribute("errors", errors);
			return "redirect:/admin/user/edit/"+user.getId();
			
		} else {
			User entity = mapper.convertToEntity(user);
			this.userRepo.save(entity);
			return "redirect:/admin/user/";
		}
	}
	@GetMapping(value = "delete/{id}")
	private String delete(@PathVariable("id") User entity) {
		this.userRepo.delete(entity);
		return "redirect:/admin/user/";
	}
}
