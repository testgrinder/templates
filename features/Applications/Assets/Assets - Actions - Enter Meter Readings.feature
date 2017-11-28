Feature: Assets - Actions - Enter Meter Readings
  
  Maximo users shall be able to enter meter readings for assets with meters.
  
  Scenario: Assets - Actions - Enter Meter Readings - Enter Meter Reading
    
    Maximo users shall be able to enter meter readings for an asset.
    
    Given I login to Maximo as Administrator
      And I go to the Assets / Assets application
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Asset]
      And I enter '[Asset]' in the Asset field
      And I enter 'Enter Meter Reading' in the description field of the Asset field
      And I select the Meters tab
      And I click the 'New Row' button in the Meters table
      And I activate the detail menu for the Meter field in the Meters table details
      And I click menu item 'Select Value'
      And I enter '=TEMP-F' in the Meter field
      And I initiate search in the unlabeled table
      And I select the 1st row in the unlabeled table
      And I see the value 'TEMP-F' in the Meter field on the current row in the Meters table
      And I see that the 'Active?' checkbox is checked in the Meters table details
      And I save the record
      
     When I select action 'Enter Meter Readings'
      And I enter '100' in the 'New Reading' field on the current row in the Meters table
      And I click the OK button
      
     Then I select action 'Manage Meter Reading History'
      And I select the 'Characteristic and Gauge Meter Readings' tab
      And I see these values in the following fields on the current row in the Measurements table:
        | field       | value                     |
        | Meter       | TEMP-F                    |
        | Description | Temperature in Fahrenheit |
        | Measurement | 100.000                   |
      And I logout
        