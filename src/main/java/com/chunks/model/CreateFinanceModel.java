/**
 * 
 */
package com.chunks.model;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 
 * 
 * @author Sujith Krishna
 * @date 2 Feb 2025
 */
@Data
@Entity
@Table(name = "finance")
@AllArgsConstructor
@NoArgsConstructor
public class CreateFinanceModel {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long  id;
	@Column(name = "finance_type", nullable = false)
	private String financeType;
	
	@Column(name = "finance_name", nullable = false)
	private String financeName;
	
	@Column(name = "finance_owner_name", nullable = false)
	private String financeOwner;
	
    @Column(name = "finance_creation_date", nullable = false)
	private LocalDate financeCreationDate;
    
    @Column(name = "finance_amount", nullable = true)
	private double financeAmount;

    @Column(name = "current_finance_amount", nullable = true)
	private double currentFinanceAmount;
	
}
