/**
 * 
 */
package com.chunks.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chunks.model.CreateFinanceModel;
import com.chunks.repository.FinanceRepository;

/**
 * 
 * 
 * @author Sujith Krishna
 * @date 2 Feb 2025
 */
@Service
public class FinanceService {

	@Autowired
    private FinanceRepository financeRepository;
	
	public boolean createFinance(CreateFinanceModel finance) {
		financeRepository.save(finance);
		return true;
	}
}
