# template
Feature: Assets - Actions - Report Downtime
  
  Maximo users shall be able to report asset downtime.
  
  Background:
    
    Given I login to Maximo as Administrator
      And I go to the Assets / Assets application
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Asset]
      And I enter '[Asset]' in the Asset field
      And I enter 'Report Downtime' in the description field of the Asset field
    
  Scenario: Assets - Actions - Report Downtime w/o Status Change
    
    Maximo users shall be able to report downtime for an asset without changing its status to Down.
        
     When I select action 'Report Downtime'
      And I see the 'Report Downtime' dialog
      And I click the 'Report Downtime' radio button
      And I see a value in the 'Start Date' field
      And I see a value in the 'End Date' field
      And I record the date 1 day from now as [Tomorrow]
      And I enter '[Tomorrow]' in the 'End Date' field
      And I activate the detail menu for the 'Downtime Code' field
      And I only see the following rows in the unlabeled table:
        | Value    | Description   |
        | ADJUST   | Adjust        |
        | BRKDWN   | Breakdown     |
        | MINRSTOP | Minor Stop    |
        | SETUP    | Setup         |
      And I click the Cancel button
      And I click the OK button
      And I select action 'Manage Downtime History'
      And I enter '4:00' in the Downtime field on the current row in the unlabeled table
      And I click the OK button
      And I save the record
      
     Then I see the value '4:00' in the 'Total Downtime' field in the Downtime section
      And I logout
   
  Scenario: Assets - Actions - Report Downtime w/ Status Change
    
    AMaximo users shall be able to report downtime for an asset and change its status to Down.
   
     When I select action 'Report Downtime'
      And I see the 'Report Downtime' dialog
      And I see that the 'Change Status' radio button is selected
      And I enter 'BRKDWN' in the 'Downtime Code' field
      And I click the OK button
     
     Then I see the flash message 'up/down status has been successfully changed'
      And I see that the 'Asset Up?' checkbox is unchecked in the Downtime section
      And I logout