/**
 * 
 */
package com.chunks.model;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 
 * 
 * @author Sujith Krishna
 * @date 4 Feb 2025
 */
@Embeddable
@Data
@AllArgsConstructor
@NoArgsConstructor
public class FinanceCompositeKey implements Serializable {
	
    @Column(name = "finance_type", nullable = false)
    private String financeType;

    @Column(name = "finance_name", nullable = false)
    private String financeName;

    @Column(name = "finance_owner_name", nullable = false)
    private String financeOwner;
}
