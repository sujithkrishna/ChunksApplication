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
public class FinanceCollecionStatusController {

	@GetMapping(path = "/financeCollecionStatus")
	public String handleFinanceCollecionStatus() {
		return "financeCollecionStatus";
	}
}
