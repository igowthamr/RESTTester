package com.acceptable.dmg.services.acceptables.app.service;

import com.acceptable.dmg.services.acceptables.app.model.*;

/**
 * 7/18/17.
 */
public interface TestRunnerService {

    public ResultApp runAllAppTests(Application app);
    public ResultApp runAllAppTestsById(long appId);
    public ResultTestSuite runAppTestsByTestSuite(Application app, TestSuite suite);
    public ResultTestCase runAppTestsByTestCase(Application app, TestCase tcase);
}
