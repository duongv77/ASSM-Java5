package com.it15306.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.it15306.util.UploadUtil;

@Controller
@RequestMapping("/hehe")
public class testUpload {
	@Autowired
	private UploadUtil uploadUtil;
	
	@GetMapping("/")
	private String heli() {
		return "heli";
	}
	
	@PostMapping("/upload")
	public String uploadhelo(
			@RequestParam("uploadimg") MultipartFile uploaderFile
			) {
		this.uploadUtil.uploadFile(uploaderFile);
		return "redirect:/hehe/";
	}
}
