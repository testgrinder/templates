Feature: Assets - Actions - Associate Users and Custodians
  
  Maximo users shall be able to associate users and custodians with an asset.
  
  Background:
    
    Given I login to Maximo as Administrator
      And I go to the Assets / Assets application
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Asset]
      And I enter '[Asset]' in the Asset field
      And I enter 'Associate Users and Custodians' in the description field of the Asset field
  
  Scenario: Assets - Actions - Associate Users and Custodians - Associate User
    
     When I select action 'Associate Users and Custodians'
      And I see the 'Associate Users and Custodians' dialog
      And I click the 'New Row' button in the 'Users and Custodians' table
      And I enter 'WILSON' in the Person field
      And I check off the 'User?' checkbox
      And I click the OK button
      And I select action 'Associate Users and Custodians'
      And I see the 'Associate Users and Custodians' dialog
     
     Then I see the value 'WILSON' in the 'Person' field on the current row in the 'Users and Custodians' table
      And I logout
      
  Scenario: Assets - Actions - Associate Users and Custodians - Update User Association
    
    Maximo users shall be able to update an asset's users and/or custodians.
    
     When I select action 'Associate Users and Custodians'
      And I see the 'Associate Users and Custodians' dialog
      And I click the 'New Row' button in the 'Users and Custodians' table
      And I enter 'WILSON' in the Person field
      And I check off the 'User?' checkbox
      And I click the OK button
      And I select action 'Associate Users and Custodians'
      And I see the 'Associate Users and Custodians' dialog
      And I only see the following row in the 'Users and Custodians' table:
        | Person | Name        | Primary? | Custodian? | User?   |
        | WILSON | Mike Wilson | checked  | unchecked  | checked |
      And I check off the 'Custodian' checkbox on the current row in the 'Users and Custodians' table
      And I click the OK button
      
     Then I select action 'Associate Users and Custodians'
      And I see the 'Associate Users and Custodians' dialog
      And I only see the following row in the 'Users and Custodians' table:
        | Person | Name        | Primary? | Custodian? | User?   |
        | WILSON | Mike Wilson | checked  | checked    | checked |
      And I logout
      
  Scenario: Assets - Actions - Associate Users and Custodians - Remove User Association
    
    Maximo users shall be able to remove users and/or custodians associated with an asset.
    
     When I select action 'Associate Users and Custodians'
      And I see the 'Associate Users and Custodians' dialog
      And I click the 'New Row' button in the 'Users and Custodians' table
      And I enter 'WILSON' in the Person field
      And I check off the 'User?' checkbox
      And I click the OK button
      And I select action 'Associate Users and Custodians'
      And I see the 'Associate Users and Custodians' dialog
      And I only see the following row in the 'Users and Custodians' table:
        | Person | Name        | Primary? | Custodian? | User?   |
        | WILSON | Mike Wilson | checked  | unchecked  | checked |
      And I click the trash can on the current row in the 'Users and Custodians' table
      And I click the OK button
      
     Then I select action 'Associate Users and Custodians'
      And I see the 'Associate Users and Custodians' dialog
      And I see exactly 0 rows in the 'Users and Custodians' table
      And I logout