<h1>Final project for ITF Manual Testing Course</h1>
The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application.

Application under test: https://opensource-demo.orangehrmlive.com/

API Documentation: https://orangehrm.github.io/orangehrm-api-doc/

The final project will be split into 2 sections: Testing section and SQL section.

Tools used: JIRA, Zephyr Squad, Postman, MySQL Workbench.

<h1>Functional specifications</h1>

The below Story [FPBAC_2_My_Info_Personal_Details_section](https://github.com/bacady/Manual_testing/blob/main/Final%20project/FPBAC_2_My_Info_Personal_Details_section.pdf)
was created in JIRA and describes the functional specifications of the <strong>My Info - Personal Details</strong> module, for which the final project is performed upon.

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
</ul>

<h3>1.1.4 Test scope</h3>
<ul>
<li><strong>Tests in scope</strong>: All the features of <strong>My Info - Personal Details</strong> module which were defined in software requirement specs need to be tested: functional testing, GUI testing and API testing.</li>
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

![Test execution](https://user-images.githubusercontent.com/109169013/188260625-c08fb5b6-d394-44c7-bba6-c7cfea254526.png)

![Test Metrix](https://user-images.githubusercontent.com/109169013/188260637-7d0cecea-560e-4a90-934f-33058b679258.png)


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

For the <strong>My Info - Personal Details</strong> module API, the following checklist was generated: [API_Test_Checklist](https://github.com/bacady/Manual_testing/blob/main/Final%20project/API_Test_Checklist.csv) 

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
<ul>
<li>Test cases are executed on the created test Cycle summary: [ZFJ_Cycles](https://github.com/bacady/Manual_testing/blob/main/Final%20project/ZFJ_Cycles_08_10_2022.html)</li> 

<li>Bugs have been created based on the failed tests. The complete bug reports can be found here: [Bugs_Details_Report](https://github.com/bacady/Manual_testing/blob/main/Final%20project/Bugs_Details_Report.pdf)</li>

<li>API tests are executed based on the checklist. The collection used can be found here: [postman_test_run.json](https://github.com/bacady/Manual_testing/blob/main/Final%20project/Final%20Project%20%20Butnariuc%20Adrian-Cristinel.postman_collection.json) and [postman_test_run.json](https://github.com/bacady/Manual_testing/blob/main/Final%20project/Final%20Project%20%20Butnariuc%20Adrian-Cristinel.postman_test_run.json)
  
![Run summary](https://user-images.githubusercontent.com/109169013/183960980-3144a5ca-0059-483a-9d7d-796a4f093d6f.png)
![Run summary 2](https://user-images.githubusercontent.com/109169013/183961897-3e68f09a-c8ca-49e4-8f20-3d5f0b2a6a55.png)

![Newman_Run_Dashboard](https://user-images.githubusercontent.com/109169013/183946612-685316e2-0371-4bba-9d7c-d7d2aa7d4ad4.png)
![Newman_Run_Dashboard 2](https://user-images.githubusercontent.com/109169013/183959333-6e22566d-706f-4b99-b674-4a8aa83b18e7.png)</li>


<li>Full regression testing is needed after the bugs are fixed</li>
</ul>

<h2>1.7 Test Completion</h2>
<li>As the Exit criteria were met and satisfied as mentioned in the appropriate section, this feature is suggested to ‘Go Live’ by the Testing team</li>

<li>The traceability matrix was generated and can be found here: [Traceability Matrix.xlsx](https://github.com/bacady/Manual_testing/blob/main/Final%20project/Traceability%20Matrix.xlsx)</li>
  
![Traceability Matrix picture](https://user-images.githubusercontent.com/109169013/183964534-07ae781e-343c-4d70-8a92-49dff8851303.png)

<li>Test execution chart was generated, the final report shows that a number 4 tests have failed of a total of 145</li>
<li>A number of 145 test cases were planned for execution and all of them were executed</li>


![Test Metrix](https://user-images.githubusercontent.com/109169013/184294338-1ffdd8c7-fc60-4c2f-8d19-3c1dd220aac5.png)

![Test Summary](https://user-images.githubusercontent.com/109169013/184294027-c22e0a38-f0ad-4b83-943e-a8644a507bff.png)

<h1>2 SQL section</h1>

<li>Created a database named 'personaldetails'.</li>

![Diagrama SQL](https://user-images.githubusercontent.com/109169013/183947511-4f3d408e-d9b8-47c7-9266-14cd3a28b81d.png)

<li>Performed different queries inside the sql file: [Personal Details.sql](https://github.com/bacady/Manual_testing/blob/main/Final%20project/Personal%20Details.sql)</li>
