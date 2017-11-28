Feature: Assets - Records - Assets
  
  Maximo users shall be able to create, search, and update assets.
  
  Background:
  
    Given I login to Maximo as Administrator
      And I go to the Assets / Assets application
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Asset]
      And I record a unique 10 digit number as [Serial Number]
      And I enter these values in the following fields:
        | field                | value             |
        | Asset                | [Asset]           |
        | Serial #             | [Serial Number]   |
  
  Scenario: Assets - Records - Assets - Create Asset 
    
    Maximo users shall be able to create an asset.

     When I enter 'Create Asset' in the description field of the Asset field
    
     Then I successfully save the record
      And I logout
      
  Scenario: Assets - Records - Assets - Search for Asset
    
    Maximo users shall be able to find an asset by searching in the List tab.

     When I enter 'Search for Asset' in the description field of the Asset field
      And I successfully save the record
      And I go to the Assets / Assets application
      And I enter '=[Asset]' in the Asset filter in the Assets table
      And I initiate search in the Assets table
      And I select the first row in the Assets table
      
     Then I see the value '[Asset]' in the Asset field
      And I logout
       
  Scenario: Assets - Records - Assets - Advanced Search for Asset
    
    AMaximo users shall be able to find an asset by searching in the Advanced Search dialog.

     When I enter 'Advanced Search for Asset' in the description field of the Asset field
      And I successfully save the record
      And I select the List tab
      And I click menu bar button 'Advanced Search'
      And I enter these values in the following fields:
        | field                | value             |
        | Serial #             | [Serial Number]   |
      And I click the Find button
     
     Then I see the value '[Asset]' in the Asset field
      And I logout

  Scenario: Assets - Records - Assets - Update Asset
    
    Maximo users shall be able to update an asset.
    
     When I enter 'Update Asset' in the description field of the Asset field
      And I successfully save the record
      And I see these values in the following fields:
        | field                | value             |
        | Serial #             | [Serial Number]   |
      And I record a unique 10 digit number as [New Serial]
      And I enter these values in the following fields:
        | field                | value             |
        | Serial #             | [New Serial]      |
      And I successfully save the record
      
     Then I see these values in the following fields:
        | field                | value             |
        | Asset                | [Asset]           |
        | Serial #             | [New Serial]      | 
      And I see the value 'Update Asset' in the description field of the Asset field
      And I logout
      