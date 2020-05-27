
var acceptable = angular.module('acceptable',["ngRoute"]);
acceptable.config([ '$routeProvider',
    function($routeProvider) {
        $routeProvider.when('/', {
            templateUrl : 'templates/home.html',
            controller : 'appController'
        })
        .when("/service", {
            templateUrl : "templates/service.html",
            controller : 'serviceController'
        });
    }
]);

acceptable.controller('criteriaController', function ($scope, criteriaService) {
    $scope.showAddCriteriaDialog = false;
    $scope.types = [ "RESPONSE_STATUS","RESPONSE_HEADER", "RESPONSE_BODY"];
    $scope.showAddCriteria = function(){
        $scope.showAddCriteriaDialog = !$scope.showAddCriteriaDialog;
    };
    $scope.addCriteria = function () {
        if($scope.type){
            criteriaService.addNewCriteria(type).then(function(response){
                $scope.showAddCriteriaDialog = false;
            });
        }

    }
});
acceptable.controller('appController',function($scope, appService, shareApplicationData){

    $scope.showAddServiceDialog = false;

    appService.getApplicationData().then(function (response) {
        $scope.applicationData = response.data;
    });

    $scope.setServiceData = function(service){
        shareApplicationData.setIndividualServiceData(service);
    };

    $scope.showAddService = function(){
        $scope.showAddServiceDialog = !$scope.showAddServiceDialog;
    };

    $scope.addService = function(){
        if($scope.serviceName && $scope.serviceContext){
            appService.addNewService($scope.serviceName, $scope.serviceContext,$scope.serviceBody)
                .then(function(response){
                    appService.getApplicationData().then(function (response) {
                        $scope.applicationData = response.data;
                        $scope.showAddServiceDialog = false;
                    });
                });
        }

    };
});

//Controller for handling each RESTService
acceptable.controller('serviceController',function($scope, shareApplicationData , testService){
    $scope.service = shareApplicationData.getIndividualServiceData();
    testService.setDefaultTestResult($scope.service);

    $scope.run = function(){
        shareApplicationData.runService($scope.service.applicationId)
            .then(function(response){
                $scope.resultData = response.data.appResult;
                if($scope.service.applicationId == response.data.applicationId){
                    testService.setTestResult($scope.service,response.data.resultApp);
                }
                angular.forEach($scope.service.testSuites,function (testSuite) {
                    angular.forEach(response.data.appResult,function (testSuiteResult) {
                        if(testSuite.id == testSuiteResult.suiteId){
                            testService.setTestResult(testSuite,testSuiteResult.resultSuit);
                            angular.forEach(testSuite.testCases,function (testCase) {
                                angular.forEach(testSuiteResult.resultList, function (testResult) {
                                    if(testCase.testId == testResult.testId){
                                        testService.setTestResult(testCase,testResult.result);
                                    }
                                });

                            })
                        }
                    });
                });
        })
    };
});

acceptable.controller('testController', function ($scope , testService ) {
    testService.setDefaultTestResult($scope.testCase);
});

acceptable.controller('testSuiteController', function ($scope, testService) {
    testService.setDefaultTestResult($scope.testSuite);
});

//service for test and testSuites
acceptable.service('testService', function () {
    this.setDefaultTestResult = function(testCase){
        testCase.result = "panel-default";
    };
    this.setTestResult = function (testCase,testResult) {
        if(testResult == true){
            testCase.result = "panel-success";
        }else if(testResult == false){
            testCase.result = "panel-danger";
        }else{
            testCase.result = "panel-default";
        }
    }
});

//This service is ajax request to get application data
acceptable.service('appService',function ($http) {
    this.getApplicationData = function(){
         return $http.get("/application/all");
    };

    this.addNewService = function(serviceName, serviceContext,serviceBody){
        //User the parameter passed to pass to post request

        var data = {
            name: serviceName,
            context: serviceContext
        };
        var myobj1 = eval(serviceBody);
        return $http.post("/application", myobj1);
    }
});

acceptable.service('criteriaService', function ($http) {
    this.addNewCriteria = function (type) {
        var data = {
            type: type
        };
        return $http.post("/application", data);
    }
});
//This service is to share data between appController and serviceController
acceptable.service('shareApplicationData',function ($http) {
    var individualServiceData;

    this.getIndividualServiceData = function(){
        return individualServiceData;
    };

    this.setIndividualServiceData = function(data){
        individualServiceData = data;
    };

    this.runService = function(applicationId){
        return $http({
            url: "/application/"+applicationId+"/tests/runAll",
            method: "GET"
        });
    }
});