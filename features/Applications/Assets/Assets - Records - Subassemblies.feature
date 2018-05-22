# template
Feature: Assets - Records - Subassemblies
  
  Maximo users shall be able to add subassemblies to an asset, filter an asset's subassemblies, and remove subassemblies from an asset.
  
  Background:
    
    Given I login to Maximo as Administrator
      And I go to the Assets / Assets application
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Asset]
      And I enter '[Asset]' in the Asset field
    
  Scenario: Assets - Records - Subassemblies - Add Subassembly
    
    Maximo users shall be able to add a subassembly to an asset.

     When I enter 'Add Subassembly - Parent' in the description field of the Asset field
      And I successfully save the record
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Subassembly]
      And I enter '[Subassembly]' in the Asset field
      And I enter 'Add Subassembly - Child' in the description field of the Asset field
      And I successfully save the record
      And I select the List tab
      And I enter '=[Asset]' in the Asset field
      And I initiate search in the Assets table
      And I select the 1st row in the Assets table
      And I select the 'Spare Parts' tab
      And I click the 'New Row' button in the Subassemblies table
      And I activate the detail menu for the Asset field in the Subassemblies table details
      And I click menu item 'Select Value'
      And I enter '=[Subassembly]' in the Asset filter in the unlabeled table
      And I initiate search in the unlabeled table
      And I select the 1st row in the unlabeled table
      And I successfully save the record
      
     Then I see the value '[Subassembly]' in the Asset field on the current row in the Subassemblies table
      And I logout
      
  Scenario: Assets - Records - Subassemblies - Update Subassemblies
    
    Maximo users shall not be able to update an asset's subassembly.

     When I enter 'Update Subassemblies - Parent' in the description field of the Asset field
      And I successfully save the record
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Subassembly A]
      And I enter '[Subassembly A]' in the Asset field
      And I enter 'Update Subassemblies - Child A' in the description field of the Asset field
      And I successfully save the record
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Subassembly B]
      And I enter '[Subassembly B]' in the Asset field
      And I enter 'Update Subassemblies - Child B' in the description field of the Asset field
      And I successfully save the record
      And I select the List tab
      And I enter '=[Asset]' in the Asset field
      And I initiate search in the Assets table
      And I select the 1st row in the Assets table
      And I select the 'Spare Parts' tab
      And I click the 'New Row' button in the Subassemblies table
      And I enter '[Subassembly A]' in the Asset field in the Subassemblies table details
      And I successfully save the record
      
     When I activate the detail menu for the Asset field on the current record in the Subassemblies table
      And I click menu item 'Select Value'
      And I enter '=[Subassembly B]' in the Asset filter in the unlabeled table
      And I initiate search in the unlabeled table
      And I select the first row in the unlabeled table
      
     Then I see the 'Field Asset is read-only' system message
      And I logout
      
  Scenario: Assets - Records - Subassemblies - Filter Subassemblies
    
    Maximo users shall be able to filter an asset's subassemblies.

     When I enter 'Filter Subassemblies - Parent' in the description field of the Asset field
      And I successfully save the record
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Subassembly A]
      And I enter '[Subassembly A]' in the Asset field
      And I enter 'Filter Subassemblies - ChildA' in the description field of the Asset field
      And I successfully save the record
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Subassembly B]
      And I enter '[Subassembly B]' in the Asset field
      And I enter 'Filter Subassemblies - ChildB' in the description field of the Asset field
      And I successfully save the record
      And I select the List tab
      And I enter '=[Asset]' in the Asset field
      And I initiate search in the Assets table
      And I select the 1st row in the Assets table
      And I select the 'Spare Parts' tab
      And I click the 'New Row' button in the Subassemblies table
      And I enter '[Subassembly A]' in the Asset field in the Subassemblies table details
      And I click the 'New Row' button in the Subassemblies table
      And I enter '[Subassembly B]' in the Asset field in the Subassemblies table details
      And I successfully save the record
      And I wait for 300 seconds
      
     When I go to the Assets / Assets application
      And I enter '=[Asset]' in the Asset field
      And I initiate search in the Assets table
      And I select the 1st row in the Assets table
      And I select the 'Spare Parts' tab
      And I select the first row in the Subassemblies table
      And I enter 'ChildA' in the Description filter in the Subassemblies table
      And I initiate search in the Subassemblies table
      
     Then I see exactly 1 visible row in the Subassemblies table
      And I see the value '[Subassembly A]' in the Asset field on the current row in the Subassemblies table
      And I logout
      
  Scenario: Assets - Records - Subassemblies - Delete Subassembly
  
  Maximo users shall be able to delete a subassembly from an asset.

     When I enter 'Delete Subassembly - Parent' in the description field of the Asset field
      And I successfully save the record
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Subassembly]
      And I enter '[Subassembly]' in the Asset field
      And I enter 'Delete Subassembly - Child' in the description field of the Asset field
      And I successfully save the record
      And I select the List tab
      And I enter '=[Asset]' in the Asset field
      And I initiate search in the Assets table
      And I select the 1st row in the Assets table
      And I select the 'Spare Parts' tab
      And I click the 'New Row' button in the Subassemblies table
      And I enter '[Subassembly]' in the Asset field in the Subassemblies table details
      And I successfully save the record
      And I see the value '[Subassembly]' in the Asset field on the current row in the Subassemblies table
      And I click the trash can on the current row in the Subassemblies table
      And I successfully save the record
      
     Then I select the List tab
      And I enter '=[Asset]' in the Asset field
      And I initiate search in the Assets table
      And I select the 1st row in the Assets table
      And I select the 'Spare Parts' tab
      And I see exactly 0 rows in the Subassemblies table
      And I logout
     