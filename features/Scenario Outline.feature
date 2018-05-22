# template
Feature: My Feature
  
  Scenario Outline: My Scenario Outline - <My Parameter>
    
    Given I login to Maximo as User
      And I logout
  
  Examples:
    | My Parameter    |
    | Parameter value |
