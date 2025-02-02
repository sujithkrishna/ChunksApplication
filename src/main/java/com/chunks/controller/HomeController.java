package com.chunks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
/**
 * @author Sujith Krishna
 */
@Controller
public class HomeController {
	
	@GetMapping(path = {"/", "/home", "/index"})
	public String handleHomePage() {
		return "index";
	}

	@GetMapping(path = "/infos")
	public String handleInfoPage() {
		return "info";
	}
	
	@GetMapping(path = "/about")
	public String handleAboutPage() {
		return "about";
	}
	
	@GetMapping(path = "/services")
	public String handleServicePage() {
		return "services";
	}
	
	@GetMapping(path = "/contact")
	public String handleContactPage() {
		return "contact";
	}
	
}
