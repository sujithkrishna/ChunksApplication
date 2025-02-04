package com.chunks.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.chunks.exception.DuplicateFinanceException;
import com.chunks.model.CreateFinanceModel;
import com.chunks.service.FinanceService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

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
	public String handleFinance(Model model) {
		List<CreateFinanceModel> allFinance = financeService.getAllFinances();
	    model.addAttribute("allFinance", allFinance);
        return "createFinance";
	}
	
	
	@PostMapping(path = "/createFinance")
	public String handleCreateFinance(@RequestParam String financeType,
						            @RequestParam String financeName,
						            @RequestParam String financeOwnerName,
						            @RequestParam String financeCreationDate,
						            @RequestParam String financeAmount,HttpServletRequest request,HttpServletResponse response,RedirectAttributes redirectAttributes) {
        LocalDate creationDate = LocalDate.parse(financeCreationDate); // Convert String to LocalDate
        CreateFinanceModel financeModel = new CreateFinanceModel();
        
        
        financeModel.setFinanceType(financeType);
        financeModel.setFinanceName(financeName);
        financeModel.setFinanceOwner(financeOwnerName);
        
        
        financeModel.setFinanceCreationDate(creationDate);
        financeModel.setFinanceAmount(Double.parseDouble(financeAmount));
        financeModel.setCurrentFinanceAmount(0);
		try {
			financeService.createFinance(financeModel);
	        redirectAttributes.addFlashAttribute("success", "Finance created successfully!");
	        return "redirect:/createFinance";
		} catch (DuplicateFinanceException e) {
			redirectAttributes.addFlashAttribute("error", "A duplicate entry exists.");
	        return "redirect:/createFinance";
		} 
        
	}

}
