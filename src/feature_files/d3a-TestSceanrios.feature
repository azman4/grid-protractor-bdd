Feature: Verify Login, Creation of Project and Simulation on the D3A Web App

   @LoginToD3A @D3AE2E
   Scenario: Login to the D3A Web App
      Given I launch the "d3aURL" site
      Then I enter "email" in the "username_Textbox" field
      And I enter "password" in the "password_Textbox" field
      When I click on "login_Button" button
      Then I should see "homePage_Title" label

   @CreateProject @D3AE2E
   Scenario: Create a Test Project
      Given I click on "projects_Icon" button
      Then I should see "projectPage_Title" label
      When I click on "newProject_Button" button
      And I enter "projectName" in the "name_Textbox" field
      And I enter "projectDescription" in the "projectDescription_Textbox" field
      And I click on "newProjectAdd_Button" button
      Then I should see "projectName" value in "savedProject_Title" field

   @AddSimulation @D3AE2E
   Scenario: Add a Simulation to the Project
      Given I click on "savedProject_Title" field
      Then I should see "noSimulation_Text" label
      When I click on "newSimulation_Button" button
      And I enter "simulationName" in the "name_Textbox" field
      And I enter "simulationDescription" in the "simulationDescription_Textbox" field
      And I click on "next_Button" button
      Then I should see "modellingPage_Title" label

   @VerifySimulation @D3AE2E
   Scenario: Verify if the Simulation is added to the Project
      Given I click on "projects_Icon" field
      Then I should see "simulationName" value in "addedSimulation_Title" field
      Then I should see "siumulationCount" value in "addedSimulation_Count" field

   @DeleteProject @D3AE2E
   Scenario: Delete the Test Project
      Given I click on "savedProjectSettings_Icon" icon
      And I click on "savedProjectSettings_DeleteOption" field
      Then I click on "sure_SettingsButton" button
      Then I should not see "savedProject_TitleValue" label
