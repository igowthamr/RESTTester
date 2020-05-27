package com.acceptable.dmg.services.acceptables.app.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * 7/18/17.
 */
public class ResultTestSuite implements Serializable {

    public ResultTestSuite(long id){
        suiteId = id;
        resultList = new ArrayList<>();
    }
    @Id
    private Long suiteId;

    private Boolean resultSuit;



    @Column
    @ElementCollection(targetClass=ResultTestCase.class)
    private List<ResultTestCase> resultList = new ArrayList<>();

    public Long getSuiteId() {
        return suiteId;
    }

    public void setSuiteId(Long suiteId) {
        this.suiteId = suiteId;
    }

    public List<ResultTestCase> getResultList() {
        return resultList;
    }

    public void setResultList(List<ResultTestCase> resultList) {
        this.resultList = resultList;
    }

    public Boolean getResultSuit() {
        return resultSuit;
    }

    public void setResultSuit(Boolean resultSuit) {
        this.resultSuit = resultSuit;
    }
}
