/**
 * 
 */
package com.chunks.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.chunks.model.CreateFinanceModel;

/**
 * 
 * 
 * @author Sujith Krishna
 * @date 2 Feb 2025
 */
public interface FinanceRepository extends JpaRepository<CreateFinanceModel, Long>{

	Optional<CreateFinanceModel> findByFinanceType(String finance_type);
	
	@Query("SELECT f FROM CreateFinanceModel f WHERE f.financeType = :financeType AND f.financeName = :financeName AND f.financeOwner = :financeOwner")
	Optional<CreateFinanceModel> findByTypeNameAndOwner(@Param("financeType") String financeType, @Param("financeName") String financeName, @Param("financeOwner") String financeOwner);    
}
