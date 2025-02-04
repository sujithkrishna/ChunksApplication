/**
 * 
 */
package com.chunks.model;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
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
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "finance") // Optional: Specify table name if different
public class CreateFinanceModel {

	@EmbeddedId
	private FinanceCompositeKey id; // Composite key
	 
    @Column(name = "finance_creation_date", nullable = false)
    private LocalDate financeCreationDate;

    @Column(name = "finance_amount")
    private double financeAmount;

    @Column(name = "current_finance_amount")
    private double currentFinanceAmount;
}