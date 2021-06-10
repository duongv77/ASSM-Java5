package com.it15306.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class Home {
	@GetMapping(value="")
	public String home() {
		return "user/home";
	}
}
