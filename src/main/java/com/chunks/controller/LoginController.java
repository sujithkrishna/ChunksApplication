/**
 * 
 */
package com.chunks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 
 * 
 * @author Sujith Krishna
 * @date 2 Feb 2025
 */

@Controller
public class LoginController {
	
	@PostMapping(path = "/login")
	public String handleLoginPage(@RequestParam String username, @RequestParam String password, Model model) {
		System.out.println("Post Page Called");
		System.out.println("User is"+username);
		System.out.println("password is"+password);
		return "login";
	}
	@GetMapping(path = "/login")
	public String handleLogin() {
		System.out.println("Get Page Called");
		return "login";
	}

}
