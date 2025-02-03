/**
 * 
 */
package com.chunks.model;

import java.time.LocalDate;

import jakarta.persistence.Column;
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
@Entity
@Table(
    name = "finance",
    uniqueConstraints = {
        @UniqueConstraint(
        	name = "CONSTRAINT_INDEX_F",		
            columnNames = {"finance_type", "finance_name", "finance_owner_name"}
        )
    }
)
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CreateFinanceModel {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "finance_seq")
    @SequenceGenerator(name = "finance_seq", sequenceName = "finance_seq", allocationSize = 1)
    private Long id;  // Primary key

    @Column(name = "finance_type", nullable = false)
    private String financeType;

    @Column(name = "finance_name", nullable = false)
    private String financeName;

    @Column(name = "finance_owner_name", nullable = false)
    private String financeOwner;

    @Column(name = "finance_creation_date", nullable = false)
    private LocalDate financeCreationDate;

    @Column(name = "finance_amount")
    private double financeAmount;

    @Column(name = "current_finance_amount")
    private double currentFinanceAmount;
}