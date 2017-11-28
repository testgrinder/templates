Feature: Assets - Actions - Create
  
  Maximo users shall be able to create work orders and service requests on assets.
  
  Background:
    
    Given I login to Maximo as Administrator
      And I go to the Assets / Assets application
      And I click the 'New Asset' toolbar button
      And I record a random 12 digit number as [Asset]
      And I enter '[Asset]' in the Asset field
  
  Scenario: Assets - Actions - Create - Create Service Request
    
    Maximo users shall be able to create service requests on assets.

     When I enter 'Create Service Request' in the description field of the Asset field
      And I select action 'Change Status' 
      And I see the 'Change Status' dialog
      And I select 'Active' in the dropdown list for the 'New Status' field
      And I click the OK button
      And I see the value 'ACTIVE' in the Status field
      And I select action 'Create / Service Request'
      And I see the 'Create SR' dialog
      And I record the value in the 'Service Request' field as [SR]
      And I enter '1' in the 'Reported Priority' field
      And I enter 'Test Service Request' in the Summary field
      And I click the OK button
      And I see the flash message 'Service Request [SR] created'
      
     Then I select the 'Work' tab
      And I select the 'Tickets' tab
      And I see the value '[SR]' in the Ticket field
      And I go to the Work Orders / Service Requests application
      And I enter '=[SR]' in the 'Service Request' filter in the 'Service Requests' table
      And I initiate search in the 'Service Requests' table
      And I select the 1st row in the 'Service Requests' table
      And I see the value '[Asset]' in the Asset field in the 'Service Request Details' section
      And I logout
      
  Scenario: Assets - Actions - Create - Create Work Order
     
    Maximo users shall be able to create work orders on assets.

     When I enter 'Create Work Order' in the description field of the Asset field
      And I select action 'Change Status'
      And I see the 'Change Status' dialog
      And I select 'Active' in the dropdown list for the 'New Status' field
      And I click the OK button
      And I see the value 'ACTIVE' in the Status field
      And I select action 'Create / Work Order'
      And I see the 'Create Workorder' dialog
      And I record the value in the 'Work Order' field as [WO]
      And I enter '1' in the Priority field
      And I click the OK button
     
     Then I select the 'Work' tab
      And I see the value '[WO]' in the 'Work Order' field
      And I go to the Work Orders / Work Order Tracking application
      And I enter '=[WO]' in the 'Work Order' filter in the 'Work Orders' table
      And I initiate search in the 'Work Orders' table
      And I select the 1st row in the 'Work Orders' table
      And I see the value '[Asset]' in the Asset field
      And I logout
   