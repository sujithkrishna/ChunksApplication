package com.chunks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomePageController {
	
	@GetMapping(path = {"/", "/home", "/index"})
	public String handleHomePage() {
		return "index";
	}

	@GetMapping(path = "/info")
	public String handleInfoPage() {
		return "info";
	}
}
