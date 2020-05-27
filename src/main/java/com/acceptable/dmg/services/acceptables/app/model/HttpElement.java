package com.acceptable.dmg.services.acceptables.app.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.OneToOne;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *  on 7/17/17.
 */

public class HttpElement implements Serializable {
    /*@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;*/

    @Column(length = 1024)
    private String name;

    @Column(length = 2048)
    private String value;


   /* @OneToOne(cascade = CascadeType.ALL)
    private TestCriteria criteria ;//= new ArrayList<TestCriteria>();
*/
    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    /*public List<TestCriteria> getCriterias() {
        return criterias;
    }

    public boolean addCriteria(TestCriteria criteria) {
        return criterias.add(criteria);
    }*/

    /*public TestCriteria getCriteria() {
        return criteria;
    }

    public void setCriteria(TestCriteria criteria) {
        this.criteria = criteria;
    }
*/
}
