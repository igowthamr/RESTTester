package com.acceptable.dmg.services.acceptables.app.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *  on 7/17/17.
 */
@Entity
public class TestCriteria implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String criteriaId;
    private String expected;
    private Operation operation = Operation.EQUALS;
    private CriteriaType type = CriteriaType.RESPONSE_STATUS;
    private String name;


    public String getCriteriaId() {
        return criteriaId;
    }

    public void setCriteriaId(String criteriaId) {
        this.criteriaId = criteriaId;
    }

    public String getExpected() {
        return expected;
    }

    public void setExpected(String expected) {
        this.expected = expected;
    }

    public Operation getOperation() {
        return operation;
    }

    public void setOperation(Operation operation) {
        this.operation = operation;
    }

    public CriteriaType getType() {
        return type;
    }

    public void setType(CriteriaType type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



}
