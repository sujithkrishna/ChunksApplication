/**
 * 
 */
package com.chunks.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.chunks.model.CreateFinanceModel;
import com.chunks.model.FinanceCompositeKey;

/**
 * 
 * 
 * @author Sujith Krishna
 * @date 2 Feb 2025
 */
@Repository
public interface FinanceRepository extends JpaRepository<CreateFinanceModel, FinanceCompositeKey>{

	@Query("SELECT f FROM CreateFinanceModel f")
	List<CreateFinanceModel> findAllFinance();
	
	@Query("SELECT f FROM CreateFinanceModel f WHERE " +
	           "f.id.financeType = :financeType AND " +         // Access via embedded ID
	           "f.id.financeName = :financeName AND " +         // Access via embedded ID
	           "f.id.financeOwner = :financeOwner")             // Access via embedded ID
	Optional<CreateFinanceModel> findByTypeNameAndOwner(@Param("financeType") String financeType, @Param("financeName") String financeName, @Param("financeOwner") String financeOwner);    
}
