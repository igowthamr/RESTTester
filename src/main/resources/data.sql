
--truncate table application;
--truncate table test_suite;
INSERT INTO PUBLIC.APPLICATION(APPLICATION_ID, CONTEXT, HOST_NAME, NAME) VALUES(1, 'someService', 'api.xyz.com', 'ABC Service');
INSERT INTO PUBLIC.APPLICATION(APPLICATION_ID, CONTEXT, HOST_NAME, NAME) VALUES(2, 'someAService', 'services.abc.com', 'ABC Service');
INSERT INTO PUBLIC.APPLICATION(APPLICATION_ID, CONTEXT, HOST_NAME, NAME) VALUES(3, 'MapService', 'services.pqr.com', 'No Data Service');
INSERT INTO PUBLIC.APPLICATION(APPLICATION_ID, CONTEXT, HOST_NAME, NAME) VALUES(4, 'NoService', 'services.nothign.com', 'Full Service');

INSERT INTO PUBLIC.TEST_SUITE(ID, NAME) VALUES(1, NULL);
INSERT INTO PUBLIC.TEST_SUITE(ID, NAME) VALUES(2, NULL);
INSERT INTO PUBLIC.TEST_SUITE(ID, NAME) VALUES(3, NULL);
INSERT INTO PUBLIC.TEST_SUITE(ID, NAME) VALUES(4, NULL);

INSERT INTO PUBLIC.APPLICATION_TEST_SUITES(APPLICATION_APPLICATION_ID, TEST_SUITES_ID) VALUES(4, 1);
INSERT INTO PUBLIC.APPLICATION_TEST_SUITES(APPLICATION_APPLICATION_ID, TEST_SUITES_ID) VALUES(4, 2);
INSERT INTO PUBLIC.APPLICATION_TEST_SUITES(APPLICATION_APPLICATION_ID, TEST_SUITES_ID) VALUES(4, 3);
INSERT INTO PUBLIC.APPLICATION_TEST_SUITES(APPLICATION_APPLICATION_ID, TEST_SUITES_ID) VALUES(4, 4);

INSERT INTO PUBLIC.REQUEST(ID, BODY, URI_PATH) VALUES(1, X'aced000573720033636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470426f6479ee63bee78abb38a502000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000946756c6c20426f6479740000', 'status');
INSERT INTO PUBLIC.REQUEST(ID, BODY, URI_PATH) VALUES(2, X'aced000573720033636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470426f6479ee63bee78abb38a502000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000946756c6c20426f6479740000', 'v2/xyz/search');
INSERT INTO PUBLIC.REQUEST(ID, BODY, URI_PATH) VALUES(3, X'aced000573720033636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470426f6479ee63bee78abb38a502000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000946756c6c20426f6479740000', 'status');
INSERT INTO PUBLIC.REQUEST(ID, BODY, URI_PATH) VALUES(4, X'aced000573720033636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470426f6479ee63bee78abb38a502000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000946756c6c20426f6479740000', 'v2/zyx/search');
INSERT INTO PUBLIC.REQUEST(ID, BODY, URI_PATH) VALUES(5, X'aced000573720033636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470426f6479ee63bee78abb38a502000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000946756c6c20426f6479740000', 'status');
INSERT INTO PUBLIC.REQUEST(ID, BODY, URI_PATH) VALUES(6, X'aced000573720033636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470426f6479ee63bee78abb38a502000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000946756c6c20426f6479740000', 'status');
INSERT INTO PUBLIC.REQUEST(ID, BODY, URI_PATH) VALUES(7, X'aced000573720033636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470426f6479ee63bee78abb38a502000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000946756c6c20426f6479740000', 'v2/xyz/search');
INSERT INTO PUBLIC.REQUEST(ID, BODY, URI_PATH) VALUES(8, X'aced000573720033636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470426f6479ee63bee78abb38a502000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000946756c6c20426f6479740000', 'status');
INSERT INTO PUBLIC.REQUEST(ID, BODY, URI_PATH) VALUES(9, X'aced000573720033636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470426f6479ee63bee78abb38a502000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000946756c6c20426f6479740000', 'v2/xyz/search');
INSERT INTO PUBLIC.REQUEST(ID, BODY, URI_PATH) VALUES(10, X'aced000573720033636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470426f6479ee63bee78abb38a502000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000946756c6c20426f6479740000', 'v2/xyz/search');

INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(1, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e000278707400065365727665727400056e67696e78');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(1, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000c436f6e74656e742d5479706574001e6170706c69636174696f6e2f6a736f6e3b636861727365743d5554462d38');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(2, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000d417574686f72697a6174696f6e74002a426173696320727577697275333038343932333834393839323469657577726975776965757234333934');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(2, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000c436f6e74656e742d5479706574001e6170706c69636174696f6e2f6a736f6e3b636861727365743d5554462d38');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(3, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e000278707400065365727665727400056e67696e78');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(3, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000c436f6e74656e742d5479706574001e6170706c69636174696f6e2f6a736f6e3b636861727365743d5554462d38');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(4, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000d417574686f72697a6174696f6e74002a426173696320727577697275333038343932333834393839323469657577726975776965757234333934');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(4, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000c436f6e74656e742d5479706574001e6170706c69636174696f6e2f6a736f6e3b636861727365743d5554462d38');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(5, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e000278707400065365727665727400056e67696e78');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(5, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000c436f6e74656e742d5479706574001e6170706c69636174696f6e2f6a736f6e3b636861727365743d5554462d38');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(6, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e000278707400065365727665727400056e67696e78');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(6, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000c436f6e74656e742d5479706574001e6170706c69636174696f6e2f6a736f6e3b636861727365743d5554462d38');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(7, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000d417574686f72697a6174696f6e74002a426173696320727577697275333038343932333834393839323469657577726975776965757234333934');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(7, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000c436f6e74656e742d5479706574001e6170706c69636174696f6e2f6a736f6e3b636861727365743d5554462d38');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(8, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e000278707400065365727665727400056e67696e78');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(8, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000c436f6e74656e742d5479706574001e6170706c69636174696f6e2f6a736f6e3b636861727365743d5554462d38');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(9, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000d417574686f72697a6174696f6e74002a426173696320727577697275333038343932333834393839323469657577726975776965757234333934');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(9, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000c436f6e74656e742d5479706574001e6170706c69636174696f6e2f6a736f6e3b636861727365743d5554462d38');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(10, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000d417574686f72697a6174696f6e74002a426173696320727577697275333038343932333834393839323469657577726975776965757234333934');
INSERT INTO PUBLIC.REQUEST_HEADERS(REQUEST_ID, HEADERS) VALUES(10, X'aced000573720035636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e487474704865616465726efdc74318e2713b02000078720036636f6d2e63646b2e646d672e73657276696365732e61636365707461626c65732e6170702e6d6f64656c2e48747470456c656d656e742d71585a1d4531930200024c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e0002787074000c436f6e74656e742d5479706574001e6170706c69636174696f6e2f6a736f6e3b636861727365743d5554462d38');

INSERT INTO PUBLIC.TEST_CASE(TEST_ID, REQUEST_ID) VALUES(1, 1);
INSERT INTO PUBLIC.TEST_CASE(TEST_ID, REQUEST_ID) VALUES(2, 2);
INSERT INTO PUBLIC.TEST_CASE(TEST_ID, REQUEST_ID) VALUES(3, 3);
INSERT INTO PUBLIC.TEST_CASE(TEST_ID, REQUEST_ID) VALUES(4, 4);
INSERT INTO PUBLIC.TEST_CASE(TEST_ID, REQUEST_ID) VALUES(5, 5);
INSERT INTO PUBLIC.TEST_CASE(TEST_ID, REQUEST_ID) VALUES(6, 6);
INSERT INTO PUBLIC.TEST_CASE(TEST_ID, REQUEST_ID) VALUES(7, 7);
INSERT INTO PUBLIC.TEST_CASE(TEST_ID, REQUEST_ID) VALUES(8, 8);
INSERT INTO PUBLIC.TEST_CASE(TEST_ID, REQUEST_ID) VALUES(9, 9);
INSERT INTO PUBLIC.TEST_CASE(TEST_ID, REQUEST_ID) VALUES(10, 10);

INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('1', 'authgw/1.1', 'Server', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('2', '200', 'StatusCode', 0, 2);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('3', 'application/xml', 'Content-Type', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('4', '<status code="GOOD"/>', 'Body', 0, 1);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('5', 'nginx', 'Server', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('6', '200', 'Status', 0, 2);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('7', 'application/json;charset=UTF-8', 'Content-Type', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('8', '{"summary":{"count"', 'Body', 1, 1);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('9', 'nginx', 'Server', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('10', '200', 'StatusCode', 0, 2);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('11', 'application/json;charset=UTF-8', 'Content-Type', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('12', '<status code="GOOD"/>', 'Body', 0, 1);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('13', 'nginx', 'Server', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('14', '200', 'Status', 0, 2);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('15', 'application/json;charset=UTF-8', 'Content-Type', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('16', '{"summary":{"count"', 'Body', 1, 1);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('17', 'nginx', 'Server', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('18', '200', 'StatusCode', 0, 2);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('19', 'application/json;charset=UTF-8', 'Content-Type', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('20', '<status code="GOOD"/>', 'Body', 0, 1);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('21', 'nginx', 'Server', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('22', '200', 'StatusCode', 0, 2);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('23', 'application/json;charset=UTF-8', 'Content-Type', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('24', '<status code="GOOD"/>', 'Body', 0, 1);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('25', 'nginx', 'Server', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('26', '200', 'Status', 0, 2);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('27', 'application/json;charset=UTF-8', 'Content-Type', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('28', '{"summary":{"count"', 'Body', 1, 1);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('29', 'nginx', 'Server', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('30', '200', 'StatusCode', 0, 2);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('31', 'application/json;charset=UTF-8', 'Content-Type', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('32', '<status code="GOOD"/>', 'Body', 0, 1);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('33', 'nginx', 'Server', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('34', '200', 'Status', 0, 2);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('35', 'application/json;charset=UTF-8', 'Content-Type', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('36', '{"summary":{"count"', 'Body', 1, 1);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('37', 'nginx', 'Server', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('38', '200', 'Status', 0, 2);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('39', 'application/json;charset=UTF-8', 'Content-Type', 0, 0);
INSERT INTO PUBLIC.TEST_CRITERIA(CRITERIA_ID, EXPECTED, NAME, OPERATION, TYPE) VALUES('40', '{"summary":{"count"', 'Body', 1, 1);


INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(1, '1');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(1, '2');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(1, '3');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(1, '4');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(2, '5');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(2, '6');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(2, '7');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(2, '8');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(3, '9');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(3, '10');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(3, '11');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(3, '12');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(4, '13');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(4, '14');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(4, '15');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(4, '16');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(5, '17');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(5, '18');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(5, '19');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(5, '20');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(6, '21');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(6, '22');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(6, '23');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(6, '24');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(7, '25');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(7, '26');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(7, '27');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(7, '28');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(8, '29');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(8, '30');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(8, '31');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(8, '32');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(9, '33');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(9, '34');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(9, '35');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(9, '36');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(10, '37');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(10, '38');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(10, '39');
INSERT INTO PUBLIC.TEST_CASE_CRITERIAS(TEST_CASE_TEST_ID, CRITERIAS_CRITERIA_ID) VALUES(10, '40');




INSERT INTO PUBLIC.TEST_SUITE_TEST_CASES(TEST_SUITE_ID, TEST_CASES_TEST_ID) VALUES(1, 1);
INSERT INTO PUBLIC.TEST_SUITE_TEST_CASES(TEST_SUITE_ID, TEST_CASES_TEST_ID) VALUES(1, 2);
INSERT INTO PUBLIC.TEST_SUITE_TEST_CASES(TEST_SUITE_ID, TEST_CASES_TEST_ID) VALUES(2, 3);
INSERT INTO PUBLIC.TEST_SUITE_TEST_CASES(TEST_SUITE_ID, TEST_CASES_TEST_ID) VALUES(2, 4);
INSERT INTO PUBLIC.TEST_SUITE_TEST_CASES(TEST_SUITE_ID, TEST_CASES_TEST_ID) VALUES(3, 5);
INSERT INTO PUBLIC.TEST_SUITE_TEST_CASES(TEST_SUITE_ID, TEST_CASES_TEST_ID) VALUES(3, 6);
INSERT INTO PUBLIC.TEST_SUITE_TEST_CASES(TEST_SUITE_ID, TEST_CASES_TEST_ID) VALUES(3, 7);
INSERT INTO PUBLIC.TEST_SUITE_TEST_CASES(TEST_SUITE_ID, TEST_CASES_TEST_ID) VALUES(4, 8);
INSERT INTO PUBLIC.TEST_SUITE_TEST_CASES(TEST_SUITE_ID, TEST_CASES_TEST_ID) VALUES(4, 9);
INSERT INTO PUBLIC.TEST_SUITE_TEST_CASES(TEST_SUITE_ID, TEST_CASES_TEST_ID) VALUES(4, 10);