package com.acceptable.dmg.services.acceptables.app.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 7/18/17.
 */
public class ResultApp implements Serializable {
    @Id
    private Long applicationId;

    public ResultApp(long id){
        applicationId = id;
        runDate = new Date(System.currentTimeMillis());
    }
    private Date runDate;

    Boolean resultApp;

    @Column()
    @ElementCollection(targetClass=ResultTestSuite.class)
    private List<ResultTestSuite> AppResult = new ArrayList<>();

    public Long getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(Long applicationId) {
        this.applicationId = applicationId;
    }

    public Date getRunDate() {
        return runDate;
    }

    public void setRunDate(Date runDate) {
        this.runDate = runDate;
    }

    public List<ResultTestSuite> getAppResult() {
        return AppResult;
    }

    public void setAppResult(List<ResultTestSuite> appResult) {
        AppResult = appResult;
    }

    public Boolean getResultApp() {
        return resultApp;
    }

    public void setResultApp(Boolean resultApp) {
        this.resultApp = resultApp;
    }
}
