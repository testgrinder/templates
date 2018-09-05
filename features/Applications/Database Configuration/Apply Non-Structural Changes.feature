# template
Feature: Apply Non-Structural Database Changes
  
  Scenario: Apply Non-Structural Database Changes
    
     When I login to Maximo as Administrator
     Then I go to the System Configuration / Platform Configuration / Database Configuration application
      And I see that the current application is 'Database Configuration'

     # apply non-structural changes
     Then I select the List tab
      And I select action 'Apply Configuration Changes'
      And I see the 'Non-Structural Database Configuration' dialog
      And I click the 'Start Configuring the Database' button
      And I see the 'You started the database configuration. You can click Refresh Status at any time to see the latest status.' system message
      And I click the OK button
      And I wait for 60 seconds
      And I click the 'Refresh Status' button
      And I see the 'The database configuration is complete. You can view the log file to see the detailed status.' system message
      And I click the OK button
      And I click the OK button

     And I logout
