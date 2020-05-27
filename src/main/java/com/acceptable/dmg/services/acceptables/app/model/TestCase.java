package com.acceptable.dmg.services.acceptables.app.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *  on 7/17/17.
 */

@Entity
public class TestCase implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long testId;

    private String name;

    @OneToOne(cascade = CascadeType.ALL)
    private Request request;

    @OneToMany(cascade = CascadeType.ALL)
    private List<TestCriteria> criterias = new ArrayList<>();

    private Boolean disabled = new Boolean(false);

    public Boolean isDisabled() {
        return disabled;
    }

    public void setDisabled(Boolean disable) {
        this.disabled = disable;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getTestId() {
        return testId;
    }

    public void setTestId(Long testId) {
        this.testId = testId;
    }

    public Request getRequest() {
        return request;
    }

    public void setRequest(Request request) {
        this.request = request;
    }

    public List<TestCriteria> getCriterias() {
        return criterias;
    }

    public void setCriterias(List<TestCriteria> criterias) {
        this.criterias = criterias;
    }

}
