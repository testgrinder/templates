# template
Feature: Apply Structural Database Changes
  
  Scenario: Apply Structural Database Changes
    
     When I login to Maximo as Administrator
     Then I go to the System Configuration / Platform Configuration / Database Configuration application

     # turn admin mode on
     Then I select the List tab
      And I select action 'Manage Admin Mode'
      And I see the 'Turn Admin Mode ON' dialog
      And I click the 'Turn Admin Mode ON' button

    # Uncomment these lines if your Maximo requires eSignature for database configuration changes
    # Then I see the 'Electronic Signature Authentication' dialog
    #  And I enter the password for the Administrator role in the 'Password' field
    #  And I enter 'Applying database configuration changes via testgrider' in the 'Reason For Change' field
    #  And I click the OK button

     Then I see the 'Starting to set Admin Mode ON.' system message
      And I click the OK button
      And I wait for 15 seconds
      And I click the 'Refresh Status' button
      And I see the 'Administration mode is on for this server.' system message
      And I click the OK button
      And I click the Close button

     # apply changes
     Then I select action 'Apply Configuration Changes'
      And I see the 'Structural Database Configuration' dialog
      And I check off the 'Do you have a current backup' checkbox
      And I click the 'Start Configuring the Database' button

    # Uncomment these lines if your Maximo requires eSignature for database configuration changes
    # Then I see the 'Electronic Signature Authentication' dialog
    #  And I enter the password for the Administrator role in the 'Password' field
    #  And I enter 'Applying database configuration changes via testgrider' in the 'Reason For Change' field
    #  And I click the OK button

     Then I see the 'You started the database configuration. You can click Refresh Status at any time to see the latest status.' system message
      And I click the OK button
      And I wait for 60 seconds
      And I click the 'Refresh Status' button
      And I see the 'The database configuration is complete. You can view the log file to see the detailed status.' system message
      And I click the OK button
      And I click the OK button

     # turn off admin mode
     Then I select action 'Manage Admin Mode'
      And I see the 'Turn Admin Mode OFF' dialog
      And I click the 'Turn Admin Mode OFF' button

    # Uncomment these lines if your Maximo requires eSignature for database configuration changes
    # Then I see the 'Electronic Signature Authentication' dialog
    #  And I enter the password for the Administrator role in the 'Password' field
    #  And I enter 'Applying database configuration changes via testgrider' in the 'Reason For Change' field
    #  And I click the OK button

     Then I see the 'Starting to set Admin Mode OFF.' system message
      And I click the OK button
      And I wait for 15 seconds
      And I click the 'Refresh Status' button
      And I see the 'Administration mode is off for this server.' system message
      And I click the OK button
      And I click the Close button

      And I logout
