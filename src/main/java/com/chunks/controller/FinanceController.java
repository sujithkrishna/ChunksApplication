/**
 * 
 */
package com.chunks.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chunks.exception.ErrorDetails;
import com.chunks.model.CreateFinanceModel;
import com.chunks.repository.FinanceRepository;
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
	
	@Autowired
	private ErrorDetails dataIntegrityException;
	
	@GetMapping(path = "/createFinance")
	public String handleFinance() {
		System.out.println("Get Method---------------");
		System.out.println("dataIntegrityException : "+dataIntegrityException.getMessage());
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
        
        
       // financeModel.setFinanceKey(financeModelKey);
        financeModel.setFinanceCreationDate(creationDate);
        financeModel.setFinanceAmount(Double.parseDouble(financeAmount));
        financeModel.setCurrentFinanceAmount(0);
        boolean status =  financeService.createFinance(financeModel);        
		System.out.println("Post Method---------------status"+status);
		System.out.println("dataIntegrityException : "+dataIntegrityException.getMessage());
		return "createFinance";
	}

}
