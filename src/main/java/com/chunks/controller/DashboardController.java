/**
 * 
 */
package com.chunks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 
 * 
 * @author Sujith Krishna
 * @date 2 Feb 2025
 */
@Controller
public class DashboardController {

	
	@GetMapping(path = "/dashboard")
	public String handleInfoPage() {
		return "dashboard";
	}

	
}
