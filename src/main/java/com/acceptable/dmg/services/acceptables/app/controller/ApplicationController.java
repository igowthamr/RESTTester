package com.acceptable.dmg.services.acceptables.app.controller;

import com.acceptable.dmg.services.acceptables.app.model.Application;
import com.acceptable.dmg.services.acceptables.app.model.ResultApp;
import com.acceptable.dmg.services.acceptables.app.service.ApplicationService;
import com.acceptable.dmg.services.acceptables.app.service.TestRunnerService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 *  on 7/17/17.
 */
@RestController
@RequestMapping(value = "/application")
public class ApplicationController {

    @Resource
    private ApplicationService appService;

    @Resource
    private TestRunnerService testRunner;

    @RequestMapping(value = "", method = RequestMethod.POST)
    @ResponseBody
    public Application createApplication(@RequestBody Application application) {
        appService.createApplication(application);
        return application;
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    @ResponseBody
    public List<Application> findApplication(@RequestBody Application app) {
        return appService.findApplication(app);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Application getApplicationById(@PathVariable Long id) {

        return fetchApplication(id);
    }

    private Application fetchApplication(Long id){
        Application app = new Application();
        app.setApplicationId(id);
        List<Application> apps = appService.findApplication(app);
        return (apps != null) ? apps.get(0) : null;
    }

    @RequestMapping(value = "/{id}/tests", method = RequestMethod.GET)
    @ResponseBody
    public String getTests(@PathVariable Long id){
        Application app = fetchApplication(id);

        //TODO: populate apps to have tests return dummy tests for UI.

        return "{}";
    }

    @RequestMapping(value = "/{id}/tests/run", method = RequestMethod.GET)
    @ResponseBody
    public String runTests(@PathVariable Long id, @RequestParam String testId){

        //TODO: populate apps to have tests return dummy tests for UI.

        return "{}";
    }

    @RequestMapping(value = "/{id}/tests/runAll", method = RequestMethod.GET)
    @ResponseBody
    public ResultApp runAllTests(@PathVariable Long id){

        //TODO: populate apps to have tests return dummy tests for UI.
        Application app = new Application();
        app.setApplicationId(id);
        app = appService.findApplication(app).get(0);



        ResultApp result = testRunner.runAllAppTests(app);
        app.getResults().add(result);
        appService.saveAndFlush(app);

        return result;
    }

    @RequestMapping(value = "/all", method = RequestMethod.GET)
    @ResponseBody
    public List<Application> getAllApplication() {

        return appService.getAll();
    }

}
