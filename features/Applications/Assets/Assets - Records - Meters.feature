Feature: Assets - Records - Meters
  
  Maximo users shall be able to associate meters with assets and remove those meters.
  
  Background:
    
    Given I login to Maximo as Administrator
      And I go to the Assets / Assets application
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Asset]
      And I enter '[Asset]' in the Asset field
  
  Scenario: Assets - Records - Meters - Add Meter
    
    Maximo users shall be able to add a meter to an asset.

     When I enter 'Add Meter' in the description field of the Asset field
      And I select the Meters tab
      And I click the 'New Row' button in the Meters table
      And I activate the detail menu for the Meter field in the Meters table details
      And I click menu item 'Select Value'
      And I enter '=TEMP-F' in the Meter field
      And I initiate search in the unlabeled table
      And I select the 1st row in the unlabeled table
     
     Then I see the value 'TEMP-F' in the Meter field on the current row in the Meters table
      And I see that the 'Active?' checkbox is checked in the Meters table details
      And I successfully save the record
      And I logout
      
  Scenario: Assets - Records - Meters - Delete Meter 
    
    Maximo users shall be able to remove a meter from an asset.
    
     When I enter 'Delete Meter' in the description field of the Asset field
      And I select the Meters tab
      And I click the 'New Row' button in the Meters table
      And I activate the detail menu for the Meter field in the Meters table details
      And I click menu item 'Select Value'
      And I enter '=TEMP-F' in the Meter field
      And I initiate search in the unlabeled table
      And I select the 1st row in the unlabeled table
      And I successfully save the record
      And I see the value 'TEMP-F' in the Meter field on the current row in the Meters table
      And I click the trash can on the current row in the Meters table
      And I successfully save the record
      
     Then I see exactly 0 rows in the Meters table
      And I logout
    