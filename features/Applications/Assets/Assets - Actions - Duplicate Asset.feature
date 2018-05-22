# template
Feature: Assets - Actions - Duplicate Asset
  
  Maximo users shall be able to duplicate assets.
  
  Scenario: Assets - Actions - Duplicate Asset - Create Duplicate Asset
    
    Maximo users shall be able to duplicate an asset.
    
    Given I login to Maximo as Administrator
      And I go to the Assets / Assets application
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Asset]
      And I enter '[Asset]' in the Asset field
      And I enter 'Duplicating Asset' in the description field of the Asset field
      And I successfully save the record
      
     When I select action 'Duplicate Asset'
     
     Then I see an empty value in the Asset field
      And I see the value 'Duplicating Asset' in the description field of the Asset field
      And I logout