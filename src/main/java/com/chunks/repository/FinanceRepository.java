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

/**
 * 
 * 
 * @author Sujith Krishna
 * @date 2 Feb 2025
 */
@Repository
public interface FinanceRepository extends JpaRepository<CreateFinanceModel, Long>{

	@Query("SELECT f FROM CreateFinanceModel f")
	List<CreateFinanceModel> findAllFinance();
	
	@Query("SELECT f FROM CreateFinanceModel f WHERE f.financeType = :financeType AND f.financeName = :financeName AND f.financeOwner = :financeOwner")
	Optional<CreateFinanceModel> findByTypeNameAndOwner(@Param("financeType") String financeType, @Param("financeName") String financeName, @Param("financeOwner") String financeOwner);    
}
