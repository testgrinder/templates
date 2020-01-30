# template
Feature: Automation Scripts - Create Script with Attribute Launch Point
  
  Scenario: Automation Scripts - Create Script with Attribute Launch Point

    Given I login to Maximo as Administrator
      And I go to the System Configuration / Platform Configuration / Automation Scripts application

      And I select action 'Create / Script with Attribute Launch Point'
      And I see the 'Create Script with Attribute Launch Point : Step 1 of 3' section
      And I enter '<Launch Point 1 Name>' in the 'Launch Point' field
      And I enter '<Launch Point 1 Description>' in the description field of the 'Launch Point' field
      
      And I activate the detail menu for the 'Object' field
      And I enter '=<Object 1>' in the 'Object' filter in the unlabelled table
      And I initiate search in the unlabelled table
      And I choose the first row in the unlabelled table
      And I see the value '<Object 1>' in the 'Object' field
  
      And I check off the 'Active' checkbox
      And I enter '<Attribute 1>' in the 'Attribute' field
      And I click the 'Run action' radio button in the Events section
      And I click the Next button
      And I see the 'Create Script with Attribute Launch Point : Step 2 of 3' section
      And I enter these values in the following fields:
            | field           | value    |
            | Script          | <Script> |
            | Script Language | jython   |
            | Log Level       | INFO     |
      And I enter '<Script Description>' in the description field of the Script field

      And I click the Next button
      And I see the 'Create Script with Attribute Launch Point : Step 3 of 3' section
      And I enter the following value in the 'Source Code' field
"""
# Automation Script Source Code
"""
      And I click the Create button
     Then I see the 'The launch point was created successfully.' system message
      And I click the Close button
      
          # REMOVE IF NOT NEEDED
          # Add launch point for <Attribute 2>
      And I select action 'Create / Script with Attribute Launch Point'
      And I see the 'Create Script with Attribute Launch Point : Step 1 of 3' section
      And I enter '<Launch Point 2 Name>' in the 'Launch Point' field
      And I enter '<Launch Point 2 Description>' in the description field of the 'Launch Point' field
      
      And I activate the detail menu for the 'Object' field
      And I enter '=<Object 2>' in the 'Object' filter in the unlabelled table
      And I initiate search in the unlabelled table
      And I choose the first row in the unlabelled table
      And I see the value '<Object 2>' in the 'Object' field
  
      And I check off the 'Active' checkbox
      And I enter '<Attribute 2>' in the 'Attribute' field
      And I click the 'Run action' radio button in the Events section
      And I click the 'Existing:' radio button in the Script section
      And I enter '<Script>' in the 'Script' field in the Script section
      And I click the Next button
      And I see the 'Create Script with Attribute Launch Point : Step 2 of 3' section
      And I click the Next button
      And I see the 'Create Script with Attribute Launch Point : Step 3 of 3' section
      And I click the Create button
     Then I see the 'The launch point was created successfully.' system message
      And I click the Close button

      And I logout
