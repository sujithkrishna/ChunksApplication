/**
 * 
 */
package com.chunks.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chunks.model.CreateFinanceModel;

/**
 * 
 * 
 * @author Sujith Krishna
 * @date 2 Feb 2025
 */
public interface FinanceRepository extends JpaRepository<CreateFinanceModel, Long>{

	CreateFinanceModel findByFinanceType(String financeType);
    
}
