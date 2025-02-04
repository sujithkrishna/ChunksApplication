/**
 * 
 */
package com.chunks.service;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import com.chunks.exception.DuplicateFinanceException;
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
	
	public void createFinance(CreateFinanceModel finance) throws DuplicateFinanceException {
		Optional<CreateFinanceModel> existingFinance = financeRepository.findByTypeNameAndOwner(
				finance.getId().getFinanceType(), 
				finance.getId().getFinanceName(), 
				finance.getId().getFinanceOwner()
		    );
	    
	    if (existingFinance.isPresent()) {
	        dataIntegrityException.setTimestamp(LocalDateTime.now());
			dataIntegrityException.setMessage(Arrays.asList("You are trying to insert the data which is already avilable in the system"));
			throw new DuplicateFinanceException("You are trying to insert the data which is already avilable in the system");
	    }else {
	    	financeRepository.save(finance);
	    }
	}
	
	public void updateFinance(CreateFinanceModel finance) throws DuplicateFinanceException {
		
		CreateFinanceModel existingModel = this.updateByCompositeKey(finance.getId().getFinanceType(),finance.getId().getFinanceName(),finance.getId().getFinanceOwner(),finance);
	   // Update here..
	}
	
	
	
    public List<CreateFinanceModel> getAllFinances() {
        return financeRepository.findAllFinance(); 
    }
	
    public CreateFinanceModel updateByCompositeKey(String financeType, String financeName, String financeOwner, 
            CreateFinanceModel updatedFinance) {
			return financeRepository.findByTypeNameAndOwner(financeType, financeName, financeOwner)
				.map(existingFinance -> {
					existingFinance.setFinanceAmount(updatedFinance.getFinanceAmount());
					existingFinance.setCurrentFinanceAmount(updatedFinance.getCurrentFinanceAmount());
					existingFinance.setFinanceCreationDate(updatedFinance.getFinanceCreationDate());
					financeRepository.delete(existingFinance);
					return financeRepository.save(existingFinance);
				})
			.orElseThrow(() -> new RuntimeException("Finance entry not found with provided composite key"));
	}
    
    
	
}
