Feature: Database Configuration - Add Relationships
  
  Scenario Outline: Database Configuration - Add Relationship <Relationship> : <From> -> <To>

    Given I login to Maximo as Administrator
      And I go to the System Configuration / Platform Configuration / Database Configuration application
      And I enter '=<From>' in the 'Object' filter in the 'Objects' table
      And I initiate search in the 'Objects' table
      And I choose the first row in the 'Objects' table
      And I select the 'Relationships' tab

     Then I click the 'New Row' button in the 'Relationships' table
      And I enter '<Relationship>' in the 'Relationship' field in the 'Relationships' table details
      And I enter '<Clause>' in the 'Where Clause' field in the 'Relationships' table details
      And I enter '<Remarks>' in the 'Remarks' field in the 'Relationships' table details
      
      And I activate the detail menu for the 'Child Object' field in the 'Relationships' table details
      And I enter '=<To>' in the 'Object' filter in the unlabelled table
      And I initiate search in the unlabelled table
      And I choose the first row in the unlabelled table
      And I see the value '<To>' in the 'Child Object' field in the 'Relationships' table details
      
      And I successfully save the record
      And I logout

  Examples:
    | Relationship    | From      | To | Clause                                                | Remarks               |
    | MY_RELATIONSHIP | WORKORDER | SR | CLASS = :ORIGRECORDCLASS and TICKETID = :ORIGRECORDID | SR that originated WO |
