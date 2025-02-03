package com.chunks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
/**
 * @author Sujith Krishna
 */
@Controller
public class HomeController {
	
	@GetMapping(path = {"/", "/home", "/index"})
	public String handleHome() {
		return "index";
	}

	@GetMapping(path = "/infos")
	public String handleInfo() {
		return "info";
	}
	
	@GetMapping(path = "/about")
	public String handleAbout() {
		return "about";
	}
	
	@GetMapping(path = "/services")
	public String handleService() {
		return "services";
	}
	
	@GetMapping(path = "/contact")
	public String handleContactPage() {
		return "contact";
	}
	
}
