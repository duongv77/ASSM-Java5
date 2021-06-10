package com.it15306.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class Login {
	@GetMapping(value = "")
	public String login1() {
		return "login/login";
	}
	
	@PostMapping(value = "")
	public String login2() {
		return "login/login";
	}
}
