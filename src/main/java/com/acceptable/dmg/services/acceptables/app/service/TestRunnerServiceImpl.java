package com.acceptable.dmg.services.acceptables.app.service;

import com.acceptable.dmg.services.acceptables.app.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 7/18/17.
 */
@Service
public class TestRunnerServiceImpl implements TestRunnerService {
    @Autowired
    RestTemplate restTemplate;

    public ResultApp runAllAppTests(Application app) {
        ResultApp result = new ResultApp(app.getApplicationId());
        List<ResultTestSuite> resultTestSuites = result.getAppResult();
        result.setAppResult(resultTestSuites);
        List<TestSuite> suites = app.getTestSuites();
        Boolean isDisabled;

        for (TestSuite suite : suites) {
            isDisabled = suite.isDisabled();
            if(isDisabled==null || !isDisabled){
                resultTestSuites.add(runAppTestsByTestSuite(app, suite));
            }

        }
        for(ResultTestSuite resultTestSuite : resultTestSuites) {
            if(!resultTestSuite.getResultSuit()) {
                result.setResultApp(false);
                return result;
            }
        }
        result.setResultApp(true);
        return result;
    }

    public ResultApp runAllAppTestsById(long appId) {
        return null;

    }

    @Override
    public ResultTestSuite runAppTestsByTestSuite(Application app, TestSuite suite) {
        ResultTestSuite resultTestSuite = new ResultTestSuite(suite.getId());
        List<ResultTestCase> resultTestCases = resultTestSuite.getResultList();
        resultTestSuite.setResultList(resultTestCases);
        Boolean isDisabled;
        for(TestCase testCase: suite.getTestCases()) {
            isDisabled = testCase.isDisabled();
            if(isDisabled==null || !isDisabled) {
                resultTestCases.add(runAppTestsByTestCase(app, testCase));
            }

        }
        for(ResultTestCase resultTestCase : resultTestCases) {
            if(!resultTestCase.getResult()) {
                resultTestSuite.setResultSuit(false);
                return resultTestSuite;
            }
        }
        resultTestSuite.setResultSuit(true);
        return resultTestSuite;

    }

    @Override
    public ResultTestCase runAppTestsByTestCase(Application app, TestCase testCase) {
        Boolean result = false;
        ResultTestCase resultTestCase = new ResultTestCase(testCase.getTestId());
        try {
            result = runTestCase(testCase,buildUrl(app));

        }
        catch(RuntimeException e) {
            resultTestCase.setResult(false);
        }
        resultTestCase.setResult(result);
        return resultTestCase;

    }

    private String buildUrl(Application app) {
        return "http://" + app.getHostName() + "/" + app.getContext() + "/";
    }

    public boolean runTestCase(TestCase testCase, String uri) {
        ResponseEntity<String> response = null;
        HttpEntity requestEntity;
        String testCaseUri = uri + testCase.getRequest().getUriPath();
        List<HttpHeader> requestHeaders = testCase.getRequest().getHeaders();
        HttpMethod requestMethod = testCase.getRequest().getMethod();
        HttpHeaders headers = new HttpHeaders();
        HttpBody requestBody = testCase.getRequest().getBody();

        if (!CollectionUtils.isEmpty(requestHeaders)) {
            for (HttpHeader requestHeader : requestHeaders) {
                headers.set(requestHeader.getName(), requestHeader.getName());

            }
        }


        if (requestMethod == HttpMethod.GET || requestMethod == null) {
            requestEntity = new HttpEntity(headers);
            response = restTemplate.getForEntity(testCaseUri, String.class, requestEntity);

        } else if (requestMethod == HttpMethod.POST) {
            requestEntity = new HttpEntity(requestBody, headers);
            response = restTemplate.getForEntity(testCaseUri, String.class, requestEntity);
        }


        return runCriteria(testCase.getCriterias(), response);

    }

    public boolean runCriteria(List<TestCriteria> criterias, ResponseEntity<String> response) {
        String expectedValue;
        CriteriaType criteriaType;
        String responseBody;
        Operation operation;
        List<String> responseValueList;
        Integer intHeaderValue;
        Integer expectedInt;

        for (TestCriteria requestCriteria : criterias) {
            expectedValue = requestCriteria.getExpected();
            criteriaType = requestCriteria.getType();
            operation = requestCriteria.getOperation();
            responseValueList = response.getHeaders().get(requestCriteria.getName());

            if (criteriaType == CriteriaType.RESPONSE_STATUS) {
                if (!response.getStatusCode().toString().equals(expectedValue)) {
                    return false;
                }
            } else if (criteriaType == CriteriaType.RESPONSE_BODY) {
                responseBody = response.getBody();
                if (operation == Operation.CONTAINS) {
                    if (!responseBody.contains(expectedValue)) {
                        return false;
                    }
                } else if (operation == Operation.EQUALS) {
                    if (!responseBody.equals(expectedValue)) {
                        return false;
                    }
                }
            } else if (criteriaType == CriteriaType.RESPONSE_HEADER) {
                if (operation == Operation.EQUALS) {
                    if (!responseValueList.get(0).equals(expectedValue)) {
                        return false;
                    }
                }
                if (operation == Operation.CONTAINS) {
                    if (!responseValueList.contains(expectedValue)) {
                        return false;
                    }
                } else if (operation == Operation.GREATER_THAN) {
                    try {
                        intHeaderValue = Integer.parseInt(responseValueList.get(0));
                        expectedInt = Integer.parseInt(expectedValue);

                    } catch (NumberFormatException e) {
                        return false;
                    }
                    if (!(intHeaderValue >= expectedInt)) {
                        return false;
                    }
                } else if (operation == Operation.LESSER_THAN) {
                    try {
                        intHeaderValue = Integer.parseInt(responseValueList.get(0));
                        expectedInt = Integer.parseInt(expectedValue);

                    } catch (NumberFormatException e) {
                        return false;
                    }
                    if (!(intHeaderValue <= expectedInt)) {
                        return false;
                    }
                }

            }
        }
        return true;
    }

}
