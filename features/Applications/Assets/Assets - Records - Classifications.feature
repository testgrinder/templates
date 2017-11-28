Feature: Assets - Records - Classifications
  
  Maximo users shall be able to add, update, and delete classifications, specifications, and attribute values of specifications.
  
  Background:
        
    Given I login to Maximo as Administrator
      And I go to the Assets / Assets application
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Asset]
      And I enter '[Asset]' in the Asset field
    
  Scenario: Assets - Records - Classifications - Add Classification
      
    Maximo users shall be able to add a classification to an asset.

     When I enter 'Add Classification' in the description field of the Asset field
      And I successfully save the record
      And I select the 'Specifications' tab
      And I enter 'VEHICLE \ TTAXLE' in the Classification field
      And I successfully save the record
        
     Then I see these values in the following fields:
        | field             | value            |
        | Classification    | VEHICLE \ TTAXLE |
        | Class Description | Freightliner     |
      And I logout
      
  Scenario: Assets - Records - Classifications - Advanced Search by Classification
    
    Maximo users shall be able to find an asset by advanced searching for its classification.

     When I enter 'Advanced Search by Classification' in the description field of the Asset field
      And I select the 'Specifications' tab
      And I enter 'VEHICLE \ TTAXLE' in the Classification field
      And I successfully save the record
      And I select the List tab
      And I click menu bar button 'Advanced Search'
      And I enter 'VEHICLE \ TTAXLE' in the Classification field
      And I click the Find button
      And I enter '=[Asset]' in the Asset filter in the Assets table
      And I initiate search in the Assets table
      And I select the first row in the Assets table
      
     Then I see the value '[Asset]' in the Asset field
      And I logout
      
  Scenario: Assets - Records - Classifications - Add Attribute Values to Specifications
      
    Maximo users shall be able to add attribute values to an asset's specifications.

     When I enter 'Add Attribute Values to Specifications' in the description field of the Asset field
      And I successfully save the record
      And I select the 'Specifications' tab
      And I enter 'VEHICLE \ TTAXLE' in the Classification field
      And I successfully save the record
      And I enter '=FUELTP' in the Attribute filter in the Specifications table
      And I initiate search in the Specifications table
      And I enter 'ROCKET' in the 'Alphanumeric Value' field on the current row in the Specifications table
      And I save the record
      And I enter '=FUELCAP' in the Attribute filter in the Specifications table
      And I initiate search in the Specifications table
      And I enter '350' in the 'Numeric Value' field on the current row in the Specifications table
      And I successfully save the record
       
     Then I select the List tab
      And I enter '=[Asset]' in the Asset field
      And I initiate search in the Assets table
      And I select the 1st row in the Assets table
      And I select the Specifications tab
      And I enter 'FUEL' in the Attribute filter in the Specifications table
      And I initiate search in the Specifications table
      And I only see the following rows in the Specifications table:
        | Attribute | Description   | Data Type | Alphanumeric Value | Numeric Value | Unit of Measure | Table Value |
        | FUELTP    | Fuel Type     | ALN       | ROCKET             |               |                 |             |
        | FUELCAP   | Fuel Capacity | NUMERIC   |                    | 350.0         | GALS            |             |
      And I logout
        
  Scenario: Assets - Records - Classifications - Update Attribute Values of Specifications
    
    Maximo users shall be able to update attribute values of an asset's specifications.

     When I enter 'Update Attribute Values of Specifications' in the description field of the Asset field
      And I successfully save the record
      And I select the 'Specifications' tab
      And I enter 'VEHICLE \ TTAXLE' in the Classification field
      And I successfully save the record
      And I enter '=FUELTP' in the Attribute filter in the Specifications table
      And I initiate search in the Specifications table
      And I enter 'ROCKET' in the 'Alphanumeric Value' field on the current row in the Specifications table
      And I save the record
      And I enter '=FUELCAP' in the Attribute filter in the Specifications table
      And I initiate search in the Specifications table
      And I enter '350' in the 'Numeric Value' field on the current row in the Specifications table
      And I successfully save the record
      And I select the List tab
      And I enter '=[Asset]' in the Asset field
      And I initiate search in the Assets table
      And I select the 1st row in the Assets table
      And I select the Specifications tab
      And I enter '=FUELTP' in the Attribute filter in the Specifications table
      And I initiate search in the Specifications table
      And I enter 'DIESEL' in the 'Alphanumeric Value' field on the current row in the Specifications table
      And I save the record
      And I enter '=FUELCAP' in the Attribute filter in the Specifications table
      And I initiate search in the Specifications table
      And I enter '200' in the 'Numeric Value' field on the current row in the Specifications table
      And I successfully save the record
      
     Then I select the List tab
      And I enter '=[Asset]' in the Asset field
      And I initiate search in the Assets table
      And I select the 1st row in the Assets table
      And I select the Specifications tab
      And I enter 'FUEL' in the Attribute filter in the Specifications table
      And I initiate search in the Specifications table
      And I only see the following rows in the Specifications table:
        | Attribute | Description   | Data Type | Alphanumeric Value | Numeric Value | Unit of Measure | Table Value |
        | FUELTP    | Fuel Type     | ALN       | DIESEL             |               |                 |             |
        | FUELCAP   | Fuel Capacity | NUMERIC   |                    | 200.0         | GALS            |             |
      And I logout
      
  Scenario: Assets - Records - Classifications - Delete Specification
    
    Maximo users shall be able to delete specifications from an asset.

     When I enter 'Delete Specification' in the description field of the Asset field
      And I select the 'Specifications' tab
      And I enter 'VEHICLE \ TTAXLE' in the Classification field
      And I successfully save the record
      And I only see the following rows in the Specifications table:
        | Attribute |
        | FUELTP    |
        | FUELCAP   |
        | CABCON    |
        | LASTDOT   |
        | TAREWT    |
      And I enter '=FUELTP' in the Attribute filter in the Specifications table
      And I initiate search in the Specifications table
      And I click the trash can on the current row in the Specifications table
      And I successfully save the record
      And I enter '' in the Attribute filter in the Specifications table
      And I initiate search in the Specifications table
      
     Then I only see the following rows in the Specifications table:
        | Attribute |
        | FUELCAP   |
        | CABCON    |
        | LASTDOT   |
        | TAREWT    |
      And I logout
      
  Scenario: Assets - Records - Classifications - Update Classification
    
    Maximo users shall be able to change an asset's classification.

     When I enter 'Test Asset' in the description field of the Asset field
      And I select the 'Specifications' tab
      And I enter 'VEHICLE \ TTAXLE' in the Classification field
      And I successfully save the record
      And I activate the detail menu for the Classification field
      And I click menu item 'Clear Classification'
      And I enter 'TRACTOR \ CLASS8' in the Classification field
      And I successfully save the record
      
     Then I go to the Assets / Assets application
      And I enter '=[Asset]' in the Asset field
      And I initiate search in the Assets table
      And I select the 1st row in the Assets table
      And I select the Specifications tab
      And I see these values in the following fields:
        | field             | value            |
        | Classification    | TRACTOR \ CLASS8 |
        | Class Description | Heavy Truck      |
      And I logout
      
  Scenario: Assets - Records - Classifications - Delete Classification
    
    Maximo users shall be able to delete an asset's classification.

     When I enter 'Delete Classification' in the description field of the Asset field
      And I select the 'Specifications' tab
      And I enter 'VEHICLE \ TTAXLE' in the Classification field
      And I successfully save the record
      And I activate the detail menu for the Classification field
      And I click menu item 'Clear Classification'
      And I successfully save the record
      
     Then I go to the Assets / Assets application
      And I enter '=[Asset]' in the Asset field
      And I initiate search in the Assets table
      And I select the 1st row in the Assets table
      And I select the Specifications tab
      And I see an empty value in the Classification field
      And I see exactly 0 total number of rows in the Specifications table
      And I logout
     