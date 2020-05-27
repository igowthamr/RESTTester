package com.acceptable.dmg.services.acceptables.app.service;

import com.acceptable.dmg.services.acceptables.app.model.Application;
import com.acceptable.dmg.services.acceptables.app.repository.ApplicationRepository;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 *  on 7/17/17.
 */
@Service
public class ApplicationServiceImpl implements ApplicationService {

    @Resource
    private ApplicationRepository appRepo;

    @Override
    public Application createApplication(Application application) {
        return appRepo.save(application);
    }

    @Override
    public List<Application> findApplication(Application app) {

        /*if (app != null) {
            return appRepo.findAll();
        }
        */
        String name = app.getName();
        Long id = app.getApplicationId();
        if (StringUtils.isEmpty(name) && id != null) {
            return toList(appRepo.findOne(id));
        } else if (id != null) {
            return toList(appRepo.findOne(id));
        } else {
            List<Application> apps = appRepo.findByName(name);
            return (apps != null) ? apps : null;
        }
    }

    List<Application> toList(Application application) {
        List<Application> apps = new ArrayList<>();
        if (application != null) {
            apps.add(application);
        }
        return apps;
    }

    @Override
    public boolean deleteApplication(Long appId) {
        appRepo.delete(appId);
        return true;
    }

    @Override
    public boolean addConsumer(Application application) {
        return false;
    }

    @Override
    public boolean removeConsumer(Application application) {
        return false;
    }

    @Override
    public List<Application> getAll() {
        return appRepo.findAll();
    }

    public Application saveAndFlush(Application app) {
        return appRepo.saveAndFlush(app);
    }


}
