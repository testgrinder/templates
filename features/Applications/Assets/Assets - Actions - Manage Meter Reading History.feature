# template
Feature: Assets - Actions - Manage Meter Reading History
  
  Maximo users shall be able to manage assets' meter reading histories.
  
  Scenario: Assets - Actions - Manage Meter Reading History - Revise Reading
    
    Maximo users shall be able to revise an asset's meter reading.
    
    Given I login to Maximo as Administrator
      And I go to the Assets / Assets application
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Asset]
      And I enter '[Asset]' in the Asset field
      And I enter 'Manage Meter Reading History' in the description field of the Asset field
      And I select the Meters tab
      And I click the 'New Row' button in the Meters table
      And I activate the detail menu for the Meter field in the Meters table details
      And I click menu item 'Select Value'
      And I enter '=ODOM-M' in the Meter field
      And I initiate search in the unlabeled table
      And I select the first row in the unlabeled table
      And I enter 'ALL' in the 'Average Calculation Method' field in the Meters table details
      And I enter '1000' in the 'Last Reading' field in the Meters table details
      And I save the record
      
     When I select action 'Manage Meter Reading History'
      And I only see the following row in the 'Meter Readings' table:
        | Meter  | Description               | Enter as Delta? | Rollover? | Modified Reading | Modified Delta | Reading  | Delta    |
        | ODOM-M | Odometer Reading in Miles | checked         | unchecked |                  |                | 1,000.00 | 1,000.00 |
      And I uncheck the 'Enter as Delta' checkbox on the current row in the 'Meter Readings' table
      And I wait for 1 second
      And I see that the 'Modified Reading' field is editable
      And I enter '950' in the 'Modified Reading' field
      And I click the OK button
      
     Then I see the value '950' in the 'Last Reading' field in the 'Meters' table details
      And I logout
      