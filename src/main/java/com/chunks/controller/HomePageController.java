package com.chunks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
/**
 * @author Sujith Krishna
 */
@Controller
public class HomePageController {
	
	@GetMapping(path = {"/", "/home", "/index"})
	public String handleHomePage() {
		return "index";
	}

	@GetMapping(path = "/infos")
	public String handleInfoPage() {
		return "info";
	}
}
