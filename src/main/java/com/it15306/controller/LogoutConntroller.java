package com.it15306.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/logout")
public class LogoutConntroller {
	@Autowired private HttpSession session;
	@GetMapping(value="/")
	private String logout() {
		session.setAttribute("user", null);
		return "redirect:/login";
	}
}
