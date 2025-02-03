/**
 * 
 */
package com.chunks.service;

import java.time.LocalDateTime;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import com.chunks.exception.ErrorDetails;
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
	
	@Autowired
	private ErrorDetails dataIntegrityException;
	
	public boolean createFinance(CreateFinanceModel finance) {
		try {
		financeRepository.save(finance);
		}catch(DataIntegrityViolationException exception) {
			dataIntegrityException.setTimestamp(LocalDateTime.now());
			dataIntegrityException.setMessage(Arrays.asList("You are trying to insert the data which is already avilable in the system"));
			return false;
		}
		return true;
	}
}
