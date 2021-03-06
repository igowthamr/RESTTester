package com.acceptable.dmg.services.acceptables.app.repository;

import com.acceptable.dmg.services.acceptables.app.model.TestSuite;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/**
 *  on 7/18/17.
 */
@RepositoryRestResource(path = "suite", collectionResourceRel = "suite")
public interface TestSuiteRepository extends JpaRepository<TestSuite, Long>{
}
