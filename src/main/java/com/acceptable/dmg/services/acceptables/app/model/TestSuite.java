package com.acceptable.dmg.services.acceptables.app.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *  on 7/17/17.
 */
@Entity
public class TestSuite implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    public String name;

    @OneToMany(cascade = CascadeType.ALL)
    private List<TestCase> testCases = new ArrayList<>();

    private Boolean disabled = new Boolean(false);


    public Boolean isDisabled() {
        return disabled;
    }

    public void setDisabled(Boolean disable) {
        this.disabled = disable;
    }

    public List<TestCase> getTestCases() {
        return testCases;
    }

    public boolean addTestCase(TestCase testCase) {
        return testCases.add(testCase);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }




}
