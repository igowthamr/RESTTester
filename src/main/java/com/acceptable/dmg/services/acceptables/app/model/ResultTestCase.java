package com.acceptable.dmg.services.acceptables.app.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 7/18/17.
 */
public class ResultTestCase implements Serializable {
    @Id
    private Long testId;

    public ResultTestCase(long id){
        testId = id;

    }

    private Boolean result;

    public Boolean getResult() {
        return result;
    }

    public void setResult(Boolean result) {
        this.result = result;
    }

    public Long getTestId() {
        return testId;
    }

    public void setTestId(Long testId) {
        this.testId = testId;
    }
}
