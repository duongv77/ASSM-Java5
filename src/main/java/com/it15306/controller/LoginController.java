package com.it15306.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.it15306.entity.User;
import com.it15306.libs.HashUtil;
import com.it15306.repository.UserRepository;

@Controller
public class LoginController {
	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private HttpServletRequest request;
	
//	@Autowired
//	private HttpServletResponse response;
	
	@GetMapping("/login")
	public String getLoginForm() {
		return "login/login";
	}
	
	@PostMapping("/login")
	public String login(
			@RequestParam("email") String email,
			@RequestParam("password") String password
	) {
		User entity = this.userRepo.finByEmail(email);
		boolean checkPwd = false;
		
		if(entity != null) {
			checkPwd = HashUtil.verifile(password, entity.getPassword());
		}
		
		if(entity == null || !checkPwd) {
			request.getSession().setAttribute("errorMessLogin", "Thông tin tài khoản hoặc mật khẩu không chính xác");
			return "redirect:/login";
		}
		//lưu user đăng nhập vào session
		request.getSession().setAttribute("user", entity);
		return "redirect:/admin/user";
	}
}
