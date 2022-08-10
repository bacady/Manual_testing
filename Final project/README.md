<h1>Final project for ITF Manual Testing Course</h1>
The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application.

Application under test: https://opensource-demo.orangehrmlive.com/

API Documentation: https://orangehrm.github.io/orangehrm-api-doc/

The final project will be split into 2 sections: Testing section and SQL section.

Tools used: JIRA, Zephyr Squad, Postman, MySQL Workbench.

Functional specifications
The below Story was created in JIRA and describes the functional specifications of the <strong>My Info - Personal Details</strong> module, for which the final project is performed upon.

![Figura 1](https://user-images.githubusercontent.com/109169013/180651462-878814cf-bed5-4d60-9493-edc2289fdfd7.png)

<h1>1 Testing section</h1>

<h2>1.1 Test Planning</h2>
The Test Plan is designed to describe all details of testing for the <strong>My Info - Personal Details</strong> module from the OrangeHRM application.

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan.

<h3>1.1.1 Roles assigned to the project and persons allocated</h3>
<ul>
<li>Project manager - Iulian Niculita</li> 
<li>Product owner - Iulian Petica</li> 
<li>Software developer - Cristian Opariuc</li>
<li>QA Engineer - Adrian-Cristinel Butnariuc</li>
</ul>

<h3>1.1.2 Entry criteria defined</h3>
<ul>
<li>functional specifications are defined</li>
<li>roles needed for the project are allocated</li>
<li>initial project risks were detected and mitigated</li>
</ul>

<h3>1.1.3 Exit criteria defined</h3>
<ul>
<li>number of unresolved bugs is insignificant or they have low priority</li>
<li>all tests have been executed</li>
<li>all resolved bugs have been re-tested and approved by the QA team</li>
<li>deadline was reached</li>
<li>no detected major risk remained un-mitigated</li>
<li>exploratory regression testing must be performed on the <strong>My Info module</strong>, which includes the <strong>Personal Details section</strong></li>
</ul>

<h3>1.1.4 Test scope</h3>
<ul>
<li><strong>Tests in scope</strong>: All the feature of <strong>My Info - Personal Details</strong> module which were defined in software requirement specs need to be tested: functional testing, GUI testing and API testing.</li>
<li><strong>Tests not in scope</strong>: performance testing, integrations of the dependents module with other modules, compatibility testing with multiple browsers.</li>
</ul>

<h3>1.1.5 Risks detected</h3>
<ul>
<li><strong>Project risks</strong>: lack of experience of the QA team, short deadline of Zephyr Squad trial, unavailability of test environment
<li><strong>Product risks</strong>: validation constraints on the fields might be too restrictive to the end-user
</ul>

<h3>1.1.6 Evaluating entry criteria</h3>
The entry criterias defined in the Test Planning phase have been achieved and the test process can continue.

<h2>1.2 Test Monitoring and Control</h2>
It was done by generating periodic reports that reflect the current status of the tests:

![image](https://user-images.githubusercontent.com/109169013/183851417-5c5fe6a3-6357-467e-bf0d-9256698dd579.png)

![Cycle Summary](https://user-images.githubusercontent.com/109169013/183852123-66ba56f4-ef5e-4023-ac49-66c35a36d7c8.png)


<h2>1.3 Test Analysis</h2>
The testing process will be executed based on the above requirements for the <strong>My Info - Personal Details</strong> module. The following test conditions were found:
<ul>
<li>Check if new employee can be added</li> 
<li>Check if added employee can be edited and deleted</li>
<li>Check if multiple entries can be added/ deleted</li>
<li>Check mandatory and optional fields</li>
<li>Check max allowed characters for text fields</li>
<li>For date fields verify end date cannot be earlier than start date</li>
<li>Check Date format</li>
<li>Check if future dates are allowed</li>
<li>Verify values for drop down fields</li>
<li>Check if attachments can be added</li>
<li>Check if added attachments can be edited and deleted</li>
<li>Verify if all type of attachments are allowed</li>
<li>Check if attachments can be downloaded</li>
<li>Verify the attachment does not exceed 1MB</li>
<li>Check add/edit/delete actions via UI and via API.</li>
<li>Check all validation constraints for the fields</li>
</ul>

<h2>1.4 Test Design</h2>
Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases are boundary value analysis, equivalence partitioning and use case testing.

Test cases:

![Test Cases](https://user-images.githubusercontent.com/109169013/183852777-14a1cb4d-d183-4b1e-9d24-e4ca8282f675.png)

The test cases with steps can be viewed here: [Test_Cases_With_Steps](https://github.com/bacady/Manual_testing/blob/main/Final%20project/Test_Cases_With_Steps.xlsx)  

For the Dependants API, the following checklist was generated: [API_Test_Checklist](https://github.com/bacady/Manual_testing/blob/main/Final%20project/API_Test_Checklist.csv) 

<h2>1.5 Test Implementation</h2>
The following elements are needed to be ready before the test execution phase begins:
<ul>
<li>Testing environment is up and running: https://opensource-demo.orangehrmlive.com/</li>
<li>Access to the testing environment is given: Username : Admin | Password : admin123</li>
<li>Cycle summary was created</li>
<li>Test cases were added to the cycle summary</li>
<li>Postman collection with the dependents API methods was created</li>
<li>Authorization token was created for accessing the API</li>
</ul>
  
<h2>1.6 Test Execution</h2>
Test cases are executed on the created test Cycle summary: [ZFJ_Cycles_08_10_2022](https://github.com/bacady/Manual_testing/blob/main/Final%20project/ZFJ_Cycles_08_10_2022.html) 

Bugs have been created based on the failed tests. The complete bug reports can be found here: [Bugs_Details_Report.pdf](https://github.com/bacady/Manual_testing/blob/main/Final%20project/Bugs_Details_Report.pdf)

API tests are executed based on the checklist. The collection used can be found here: JSON file with the collection of requests created for the Dependents API
Full regression testing is needed after the bugs are fixed
<h2>1.7 Test Completion</h2>
As the Exit criteria were met and satisfied as mentioned in the appropriate section, this feature is suggested to ‘Go Live’ by the Testing team
The traceability matrix was generated and can be found here: Traceability_matrix.csv
Test execution chart was generated, the final report shows that a number 5 tests have failed of a total of 23
A number of 23 test cases were planned for execution and all of them were executed
A number of 5 total bugs were found, from which the priority is: 1 is high, 4 are medium and 1 is low
image

2 SQL section
Created a database named 'personaldetails' and a table named 'dependents' with all the columns needed to save data per specifications. Performed different queries inside the sql file: dependents.sql
