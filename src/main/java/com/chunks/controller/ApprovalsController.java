package com.chunks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 
 * 
 * @author Sujith Krishna
 * @date 3 Feb 2025
 */
@Controller
public class ApprovalsController {

	@GetMapping(path = "/approvals")
	public String handleApproval() {
		return "approvals";
	}

}
