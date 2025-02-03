/**
 * 
 */
package com.chunks.controller;

import java.math.BigDecimal;
import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chunks.model.CreateFinanceModel;
import com.chunks.service.FinanceService;

/**
 * 
 * 
 * @author Sujith Krishna
 * @date 2 Feb 2025
 */
@Controller
public class FinanceController {
	
	@Autowired
	private FinanceService financeService;
	
	@GetMapping(path = "/createFinance")
	public String handleFinance() {
		System.out.println("Get Method---------------");
		return "createFinance";
	}
	
	
	@PostMapping(path = "/createFinance")
	public String handleCreateFinance(@RequestParam String financeType,
						            @RequestParam String financeName,
						            @RequestParam String financeOwnerName,
						            @RequestParam String financeCreationDate,
						            @RequestParam String financeAmount) {
		System.out.println("START-------------------------------------------");
        LocalDate creationDate = LocalDate.parse(financeCreationDate); // Convert String to LocalDate
        CreateFinanceModel financeModel = new CreateFinanceModel();
        financeModel.setFinanceType(financeType);
        financeModel.setFinanceName(financeName);
        financeModel.setFinanceOwner(financeOwnerName);
        financeModel.setFinanceCreationDate(creationDate);
        financeModel.setFinanceAmount(Double.parseDouble(financeAmount));
        financeModel.setCurrentFinanceAmount(0.0f);
        boolean status =  financeService.createFinance(financeModel);        
		System.out.println("Post Method---------------status"+status);
		return "createFinance";
	}

}
