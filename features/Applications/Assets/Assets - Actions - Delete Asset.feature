Feature: Assets - Actions - Delete Asset
  
  Maximo users shall be able to delete assets.
  
  Scenario: Assets - Actions - Delete Asset - Delete Asset
    
    Maximo users shall be able to delete an asset.
    
    Given I login to Maximo as Administrator
      And I go to the Assets / Assets application
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Asset]
      And I enter '[Asset]' in the Asset field
      And I enter 'Delete Asset' in the description field of the Asset field
      And I successfully save the record
       
     When I select action 'Delete Asset'
      And I see the 'delete this record?' system message
      And I click the Yes button
       
     Then I see the flash message 'Record has been deleted'
      And I logout