package com.acceptable.dmg.services.acceptables.app.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 *  on 7/17/17.
 */

@Entity
public class Application implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long applicationId;
    private String name;
    private String context;
    private String hostName;

    public List<TestSuite> getTestSuites() {
        return testSuites;
    }

    public void setTestSuites(List<TestSuite> testSuites) {
        this.testSuites = testSuites;
    }

    public void setConsumers(Set<Application> consumers) {
        this.consumers = consumers;
    }

    @OneToMany(cascade = CascadeType.ALL)
    private List<TestSuite> testSuites = new ArrayList<TestSuite>();

    @OneToMany//(targetEntity = Application.class,fetch=FetchType.EAGER)
    private Set<Application> consumers = new HashSet<Application>();

    @Column(length = 2048)
    @ElementCollection(targetClass = ResultApp.class)
    private List<ResultApp> results = new ArrayList<>();



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(Long applicationId) {
        this.applicationId = applicationId;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Set<Application> getConsumers() {
        return consumers;
    }

    public void addConsumer(Application consumer) {
        this.consumers.add(consumer);
    }

    public String getHostName() {
        return hostName;
    }

    public void setHostName(String hostName) {
        this.hostName = hostName;
    }

    public List<ResultApp> getResults() {
        return results;
    }

    public void setResults(List<ResultApp> results) {
        this.results = results;
    }
}
