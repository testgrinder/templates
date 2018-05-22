# template
Feature: Assets - Records - Spare Parts
  
  Maximo users shall be able to add spare parts to assets, filter spare parts, and remove spare parts from assets.
  
  Background:
    
    Given I login to Maximo as Administrator
      And I go to the Assets / Assets application
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Asset]
      And I enter '[Asset]' in the Asset field
    
  Scenario: Assets - Records - Spare Parts - Add Spare Part with New Row Button
    
    Maximo users shall be able to add spare parts to an asset with the New Row button in the Spare Parts table.

     When I enter 'Add Spare Part with New Row Button' in the description field of the Asset field
      And I successfully save the record
      And I select the 'Spare Parts' tab
      And I click the 'New Row' button in the 'Spare Parts' table
      And I enter these values in the following fields in the 'Spare Parts' table details:
        | field        | value                 |
        | Item         | G-1000                |
        | Quantity     | 2                     |
        | Remarks      | Spare part number 1   |
        
     Then I successfully save the record
      And I logout

  Scenario: Assets - Records - Spare Parts - Add Spare Part with Select Spare Parts Button
   
    Maximo users shall be able to add spare parts to an asset with the Select Spare Parts button in the Spare Parts table.

     When I enter 'Add Spare Part with Select Spare Parts Button' in the description field of the Asset field
      And I successfully save the record
      And I select the 'Spare Parts' tab
      And I click the 'Select Spare Parts' button in the 'Spare Parts' table
      And I see the 'Select Asset Spare Parts' dialog
      And I check off the 1st row in the Items table
      And I click the OK button
     
     Then I successfully save the record
      And I logout

  Scenario: Assets - Records - Spare Parts - Filter Spare Parts
    
    Maximo users shall be able to filter an asset's spare parts.
 
     When I enter 'Filter Spare Parts' in the description field of the Asset field
      And I select the 'Spare Parts' tab
      And I click the 'New Row' button in the 'Spare Parts' table
      And I enter these values in the following fields in the 'Spare Parts' table details:
        | field        | value                 |
        | Item         | G-1000                |
        | Quantity     | 2                     |
        | Remarks      | Spare part number 1   |
      And I click the 'New Row' button in the 'Spare Parts' table
      And I enter these values in the following fields in the 'Spare Parts' table details:
        | field        | value                 |
        | Item         | 117021                |
        | Quantity     | 1                     |
        | Remarks      | Spare part number 2   |
      And I successfully save the record
      And I select the first record in the 'Spare Parts' table
      And I enter 'G-1000' in the Item filter in the 'Spare Parts' table
      And I initiate search in the 'Spare Parts' table
      
     Then I only see the following row in the 'Spare Parts' table:
        | Item   | Description                            | Quantity | IssuedQty | Remarks             |
        | G-1000 | Bearing, Pillow Block, Fafnir- 1 In ID | 2.00     | 0.00      | Spare part number 1 |
        
     
     When I enter '' in the Item filter in the 'Spare Parts' table
      And I enter '1.00' in the Quantity filter in the 'Spare Parts' table
      And I initiate search in the 'Spare Parts' table
      
     Then I only see the following row in the 'Spare Parts' table:
        | Item   | Description                   | Quantity | IssuedQty | Remarks             |
        | 117021 | Bearing, Roller, SKF- 1 In ID | 1.00     | 0.00      | Spare part number 2 |
      And I logout
     
  Scenario: Assets - Records - Spare Parts - Delete Spare Part
    
    Maximo users shall be able to delete spare parts from an asset.

     When I enter 'Delete Spare Part' in the description field of the Asset field
      And I select the 'Spare Parts' tab
      And I click the 'New Row' button in the 'Spare Parts' table
      And I enter these values in the following fields in the 'Spare Parts' table details:
        | field        | value                 |
        | Item         | G-1000                |
        | Quantity     | 2                     |
        | Remarks      | Spare part number 1   |
      And I successfully save the record
      And I click the trash can on the current record in the 'Spare Parts' table
      And I successfully save the record
     
     Then I go to the Assets / Assets application
      And I enter '=[Asset]' in the Asset field
      And I initiate search in the Assets table
      And I select the first row in the Assets table
      And I select the 'Spare Parts' tab
      And I see exactly 0 rows in the 'Spare Parts' table
      And I logout



