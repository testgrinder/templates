Feature: Assets - Actions - Reset/Replace Meters
  
  Maximo users shall be able to reset an asset's meter.
  
  Scenario: Assets - Actions - Reset/Replace Meters - Reset Meter
    
    Maximo users shall be able to reset a meter with prior readings.
    
    Given I login to Maximo as Administrator
      And I go to the Assets / Assets application
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Asset]
      And I enter '[Asset]' in the Asset field
      And I enter 'Reset Meter' in the description field of the Asset field
      And I select the Meters tab
      And I click the 'New Row' button in the Meters table
      And I activate the detail menu for the Meter field in the Meters table details
      And I click menu item 'Select Value'
      And I enter '=ODOM-M' in the Meter field
      And I initiate search in the unlabeled table
      And I select the 1st row in the unlabeled table
      And I see the value 'ODOM-M' in the Meter field on the current row in the Meters table
      And I see that the 'Active?' checkbox is checked in the Meters table details
      And I enter 'ALL' in the 'Average Calculation Method' field in the 'Continuous Meter Details' section
      And I successfully save the record
      And I select action 'Enter Meter Readings'
      And I enter '1000' in the 'New Reading' field on the current row in the Meters table
      And I click the OK button
      
     When I select the Asset tab
      And I select action 'Reset/Replace Meters'
      And I only see the following row in the Meters table:
        | Meter  | Since Last Repair | Since Last Overhaul | Since Last Inspection | Since Install | Rollover |
        | ODOM-M |                   |                     |                       |               |          |
      And I enter '500' in the 'Since Last Repair' field on the current row in the Meters table
      And I click the OK button
      
     Then I select action 'Reset/Replace Meters'
      And I select the first record in the Meters table
      And I see the value 500.00 in the 'Since Last Repair' field in the 'Current Values' section in the Meters table details
      And I logout