package com.acceptable.dmg.services.acceptables.app.repository;

import com.acceptable.dmg.services.acceptables.app.model.Application;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

/**
 *  on 7/17/17.
 */
@RepositoryRestResource(path = "app", collectionResourceRel = "app")
public interface ApplicationRepository extends JpaRepository<Application, Long> {

    List<Application> findByName(String name);
}
