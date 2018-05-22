# template
Feature: Assets - Actions - Change Status
  
  Maximo users shall be able to change the status of assets.
  
  Background:
    
    Given I login to Maximo as Administrator
      And I go to the Assets / Assets application
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Asset]
      And I enter '[Asset]' in the Asset field
      And I enter 'Test Asset' in the description field of the Asset field
    
  Scenario: Assets - Actions - Change Status - Change status from Select Action menu
    
    Maximo users shall be able to change an asset's status via the Select Action menu.

     When I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select 'Active' in the dropdown list for the 'New Status' field
      And I click the OK button
      
     Then I see the value 'ACTIVE' in the Status field
      And I logout
   
  Scenario: Assets - Actions - Change Status - Change status from toolbar button
     
    Maximo users shall be able to change an asset's status via the Change Status toolbar button.
    *This test is expected to fail in Maximo 7.6, as 7.6 has no Change Status toolbar button.*

     When I click the 'Change Status' toolbar button
      And I see the 'Change Status' dialog
      And I select 'Active' in the dropdown list for the 'New Status' field
      And I click the OK button
      
     Then I see the value 'ACTIVE' in the Status field
      And I logout
      
  Scenario Outline: Assets - Actions - Change Status - Change Status from NOT READY
    
    Maximo users shall be able to select the following statuses when an asset's status is NOT READY.
    
     When I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select '<Status>' in the dropdown list for the 'New Status' field
      And I click the OK button
      
     Then I see the value '<Display Status>' in the Status field
      And I logout
      
    Examples:
      | Status         | Display Status |
      | Active         | ACTIVE         |
      | Broken         | BROKEN         |
      | Decommissioned | DECOMMISSIONED |
      | Inactive       | INACTIVE       |
      | Limited Use    | LIMITEDUSE     |
      | Missing        | MISSING        |
      | Operating      | OPERATING      |
      | Sealed         | SEALED         |
  
  Scenario Outline: Assets - Actions - Change Status - Change Status from ACTIVE
    
     Maximo users shall be able to select the following statuses when an asset's status is ACTIVE.
    
     When I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select 'Active' in the dropdown list for the 'New Status' field
      And I click the OK button
      And I see the flash message 'Record has been saved'
      And I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select '<Status>' in the dropdown list for the 'New Status' field
      And I click the OK button
      
     Then I see the value '<Display Status>' in the Status field
      And I logout
      
    Examples:
      | Status         | Display Status |
      | Broken         | BROKEN         |
      | Decommissioned | DECOMMISSIONED |
      | Inactive       | INACTIVE       |
      | Limited Use    | LIMITEDUSE     |
      | Missing        | MISSING        |
      | Operating      | OPERATING      |
      | Sealed         | SEALED         |

  Scenario Outline: Assets - Actions - Change Status - Change Status from BROKEN
    
     Maximo users shall be able to select the following statuses when an asset's status is BROKEN.
    
     When I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select 'Broken' in the dropdown list for the 'New Status' field
      And I click the OK button
      And I see the flash message 'Record has been saved'
      And I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select '<Status>' in the dropdown list for the 'New Status' field
      And I click the OK button
      
     Then I see the value '<Display Status>' in the Status field
      And I logout
      
    Examples:
      | Status         | Display Status |
      | Active         | ACTIVE         |
      | Decommissioned | DECOMMISSIONED |
      | Inactive       | INACTIVE       |
      | Limited Use    | LIMITEDUSE     |
      | Missing        | MISSING        |
      | Operating      | OPERATING      |
      | Sealed         | SEALED         |

  Scenario Outline: Assets - Actions - Change Status - Change Status from DECOMMISSIONED
    
     Maximo users shall be able to select the following statuses when an asset's status is DECOMMISSIONED.
    
     When I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select 'Decommissioned' in the dropdown list for the 'New Status' field
      And I click the OK button
      And I see the flash message 'Record has been saved'
      And I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select '<Status>' in the dropdown list for the 'New Status' field
      And I click the OK button
      
     Then I see the value '<Display Status>' in the Status field
      And I logout
      
    Examples:
      | Status         | Display Status |
      | Active         | ACTIVE         |
      | Broken         | BROKEN         |
      | Inactive       | INACTIVE       |
      | Limited Use    | LIMITEDUSE     |
      | Missing        | MISSING        |
      | Operating      | OPERATING      |
      | Sealed         | SEALED         |

  Scenario Outline: Assets - Actions - Change Status - Change Status from INACTIVE
    
     Maximo users shall be able to select the following statuses when an asset's status is INACTIVE.
    
     When I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select 'Inactive' in the dropdown list for the 'New Status' field
      And I click the OK button
      And I see the flash message 'Record has been saved'
      And I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select '<Status>' in the dropdown list for the 'New Status' field
      And I click the OK button
      
     Then I see the value '<Display Status>' in the Status field
      And I logout
      
    Examples:
      | Status         | Display Status |
      | Active         | ACTIVE         |
      | Broken         | BROKEN         |
      | Decommissioned | DECOMMISSIONED |
      | Limited Use    | LIMITEDUSE     |
      | Missing        | MISSING        |
      | Operating      | OPERATING      |
      | Sealed         | SEALED         |

  Scenario Outline: Assets - Actions - Change Status - Change Status from LIMITEDUSE
    
     Maximo users shall be able to select the following statuses when an asset's status is LIMITEDUSE.
    
     When I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select 'Limited Use' in the dropdown list for the 'New Status' field
      And I click the OK button
      And I see the flash message 'Record has been saved'
      And I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select '<Status>' in the dropdown list for the 'New Status' field
      And I click the OK button
      
     Then I see the value '<Display Status>' in the Status field
      And I logout
      
    Examples:
      | Status         | Display Status |
      | Active         | ACTIVE         |
      | Broken         | BROKEN         |
      | Decommissioned | DECOMMISSIONED |
      | Inactive       | INACTIVE       |
      | Missing        | MISSING        |
      | Operating      | OPERATING      |
      | Sealed         | SEALED         |

  Scenario Outline: Assets - Actions - Change Status - Change Status from MISSING
    
     Maximo users shall be able to select the following statuses when an asset's status is MISSING.
    
     When I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select 'Missing' in the dropdown list for the 'New Status' field
      And I click the OK button
      And I see the flash message 'Record has been saved'
      And I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select '<Status>' in the dropdown list for the 'New Status' field
      And I click the OK button
      
     Then I see the value '<Display Status>' in the Status field
      And I logout
      
    Examples:
      | Status         | Display Status |
      | Active         | ACTIVE         |
      | Broken         | BROKEN         |
      | Decommissioned | DECOMMISSIONED |
      | Inactive       | INACTIVE       |
      | Limited Use    | LIMITEDUSE     |
      | Operating      | OPERATING      |
      | Sealed         | SEALED         |

  Scenario Outline: Assets - Actions - Change Status - Change Status from OPERATING
    
     Maximo users shall be able to select the following statuses when an asset's status is OPERATING.
    
     When I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select 'Operating' in the dropdown list for the 'New Status' field
      And I click the OK button
      And I see the flash message 'Record has been saved'
      And I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select '<Status>' in the dropdown list for the 'New Status' field
      And I click the OK button
      
     Then I see the value '<Display Status>' in the Status field
      And I logout
      
    Examples:
      | Status         | Display Status |
      | Active         | ACTIVE         |
      | Broken         | BROKEN         |
      | Decommissioned | DECOMMISSIONED |
      | Inactive       | INACTIVE       |
      | Limited Use    | LIMITEDUSE     |
      | Missing        | MISSING        |
      | Sealed         | SEALED         |

  Scenario Outline: Assets - Actions - Change Status - Change Status from SEALED
    
     Maximo users shall be able to select the following statuses when an asset's status is SEALED.
    
     When I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select 'Sealed' in the dropdown list for the 'New Status' field
      And I click the OK button
      And I see the flash message 'Record has been saved'
      And I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select '<Status>' in the dropdown list for the 'New Status' field
      And I click the OK button
      
     Then I see the value '<Display Status>' in the Status field
      And I logout
      
    Examples:
      | Status         | Display Status |
      | Active         | ACTIVE         |
      | Broken         | BROKEN         |
      | Decommissioned | DECOMMISSIONED |
      | Inactive       | INACTIVE       |
      | Limited Use    | LIMITEDUSE     |
      | Missing        | MISSING        |
      | Operating      | OPERATING      |