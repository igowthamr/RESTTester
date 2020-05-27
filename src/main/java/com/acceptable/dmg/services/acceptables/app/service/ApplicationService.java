package com.acceptable.dmg.services.acceptables.app.service;

import com.acceptable.dmg.services.acceptables.app.model.Application;

import java.util.List;

/**
 *  on 7/17/17.
 */
public interface ApplicationService {

    Application createApplication(Application application);

    List<Application> findApplication(Application app);

    boolean deleteApplication(Long appId);

    boolean addConsumer(Application application);

    boolean removeConsumer(Application application);

    List<Application> getAll();

    public Application saveAndFlush(Application app);
}
