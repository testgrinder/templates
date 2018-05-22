# template
Feature: Assets - UI - Screen Layout
  
  Maximo users shall be able to confirm screen layouts in the Asset application.
  
  Background:
    
    Given I login to Maximo as Administrator
      And I go to the Assets / Assets application
      
  Scenario: 7.5 or 7.6 w/ Calibration License; List tab
    
     When I initiate search in the Assets table
    
     Then I only see these columns in this order in the 'Assets' table:
	 	  | column              | attribute           |
	 	  | Asset               | ASSET.ASSETNUM      |
	 	  | Description         | ASSET.DESCRIPTION   |
	 	  | Location            | ASSET.LOCATION      |
 	 	  | Loop Location       | ASSET.PLUSCLPLOC    | 
	 	  | Parent              | ASSET.PARENT        |
	 	  | Rotating Item       | ASSET.ITEMNUM       |
 	 	  | Is M&TE             | ASSET.PLUSCISMTE    | 
 	 	  | Calibration         | ASSET.ISCALIBRATION | 
	 	  | Site                | ASSET.SITEID        |
	  And I logout     
	  
  Scenario: 7.5 or 7.6 OTB; List tab
    
     When I initiate search in the Assets table
    
     Then I only see these columns in this order in the 'Assets' table:
	 	  | column              | attribute           |
	 	  | Asset               | ASSET.ASSETNUM      |
	 	  | Description         | ASSET.DESCRIPTION   |
	 	  | Location            | ASSET.LOCATION      |
	 	  | Parent              | ASSET.PARENT        |
	 	  | Rotating Item       | ASSET.ITEMNUM       |
	 	  | Site                | ASSET.SITEID        |
	  And I logout 
	  
  Scenario: 7.5 w/ Calibration License; Asset tab
    
     When I initiate search in the Assets table
      And I select the 1st row in the Assets table
     
     Then I only see these fields in this order in the header section:
		  | field              | attribute              |
		  | Asset              | ASSET.ASSETNUM         |
		  | Description        | ASSET.DESCRIPTION      |
	      | Status             | ASSET.STATUS           |
		  | Site               | ASSET.SITEID           |
          | Type               | ASSET.ASSETTYPE        |
          | Asset Template     | ASSET.TEMPLATEID       |
		  | Moved              | ASSET.MOVED            |
 		  | Calibration        | ASSET.ISCALIBRATION    |
		  | Returned To Vendor | ASSET.RETURNEDTOVENDOR |
	  And I only see these fields in this order in the 'Details' section:
		  | field                     | attribute                 |
		  | Parent                    | ASSET.PARENT              |
		  | Description               | ASSET.DESCRIPTION         |
		  | Maintain Hierarchy        | ASSET.MAINTHIERCHY        |
		  | Location                  | ASSET.LOCATION            |
		  | Description               | LOCATIONS.DESCRIPTION     |
		  | Bin                       | ASSET.BINNUM              |
		  | Rotating Item             | ASSET.ITEMNUM             |
		  | Description               | ITEM.DESCRIPTION          |
		  | Condition Code            | ASSET.CONDITIONCODE       |
		  | Description               | ITEMCONDITION.DESCRIPTION |
		  | Meter Group               | ASSET.GROUPNAME           |
		  | Description               | METERGROUP.DESCRIPTION    |
		  | Usage                     | ASSET.USAGE               |
		  | Calendar                  | ASSET.CALNUM              |
		  | Shift                     | ASSET.SHIFTNUM            |
		  | Priority                  | ASSET.PRIORITY            |
		  | Serial #                  | ASSET.SERIALNUM           |
		  | Failure Class             | ASSET.FAILURECODE         |
		  | Item Type                 | ASSET.ITEMTYPE            |
		  | Tool Rate                 | ASSET.TOOLRATE            |
	  And I check off the 'Calibration' checkbox
	  And I only see these fields in this order in the 'Calibration Details' section:
	      | field                           | attribute               |
	      | Loop Location                   | ASSET.PLUSCLPLOC        |
	      | Description                     | LOCATIONS.DESCRIPTION   |
	      | Physical Location               | ASSET.PLUSCPHYLOC       |
	      | Is M&TE                         | ASSET.PLUSCISMTE        |
	      | M&TE Classification             | ASSET.PLUSCISMTECLASS   |
	      | Is Contaminated                 | ASSET.PLUSCISCONTAM     |
	      | Is Contaminated Description     | ASSET.PLUSCISCONDESC    |
	      | Buffer Solution                 | ASSET.PLUSCSOLUTION     |
	      | Internal Calibration            | ASSET.PLUSCISINHOUSECAL |
	      | Calibration Vendor              | ASSET.PLUSCVENDOR       |
	      | Description                     | COMPANIES.NAME          |
	      | Class                           | ASSET.PLUSCCLASS        |
	      | Operating Range From            | ASSET.PLUSCOPRGEFROM_NP |
	      | To                              | ASSET.PLUSCOPRGETO_NP   |
	      | Units                           | ASSET.PLUSCOPRGEEU      |
	      | Next Calibration Due Date       | ASSET.PLUSCDUEDATE_NP   |
	      | Due Date Extended               | ASSET.PLUSCPMEXTDATE    |
	      | Asset Department                | ASSET.PLUSCASSETDEPT    |
	      | Model Number                    | ASSET.PLUSCMODELNUM     |
	      | Loop Number                     | ASSET.PLUSCLOOPNUM      |
	      | Accuracy EU +                   | ASSET.PLUSCSUMEU_NP     |
	      | %Span +                         | ASSET.PLUSCSUMSPAN_NP   |
	      | %URV +                          | ASSET.PLUSCSUMURV_NP    |
	      | %Reading                        | ASSET.PLUSCSUMREAD_NP   |
	      | Applied As                      | ASSET.PLUSCSUMDIR       |
	  And I uncheck the 'Calibration' checkbox
	  And I only see these fields in this order in the 'Purchase Information' section:
	  	  | field              | attribute           |
	  	  | Vendor             | ASSET.VENDOR        |
	  	  | Description        | COMPANIES.NAME      |
	  	  | Manufacturer       | ASSET.MANUFACTURER  |
	  	  | Description        | COMPANIES.NAME      |
	  	  | Installation Date  | ASSET.INSTALLDATE   |
	  	  | Purchase Price     | ASSET.PURCHASEPRICE |
	  	  | Replacement Cost   | ASSET.REPLACECOST   |
	  	  | PO                 | ASSETTRANS.PONUM    |  
	  And I only see these fields in this order in the 'Costs' section:
	  	  | field      | attribute        |
	  	  | Total Cost | ASSET.TOTALCOST  |
	  	  | YTD Cost   | ASSET.YTDCOST    |
	  	  | Budgeted   | ASSET.BUDGETCOST |
	  	  | Inventory  | ASSET.INVCOST    |  
	  And I only see these fields in this order in the 'Downtime' section:
	  	  | field          | attribute              |
	  	  | Asset Up       | ASSET.ISRUNNING        |
	  	  | Status Date    | ASSETSTATUS.CHANGEDATE |
	  	  | Total Downtime | ASSET.TOTDOWNTIME      |  
	  And I only see these fields in this order in the 'Modified' section:
	  	  | field        | attribute        |
	  	  | Changed By   | ASSET.CHANGEBY   |
	  	  | Changed Date | ASSET.CHANGEDATE |
	  And I logout	
	  
  Scenario: 7.6 w/ Calibration License; Asset tab
    
     When I initiate search in the Assets table
      And I select the 1st row in the Assets table
     
     Then I only see these fields in this order in the header section:
		  | field              | attribute              |
		  | Asset              | ASSET.ASSETNUM         |
		  | Asset description  | ASSET.DESCRIPTION      |
	      | Status             | ASSET.STATUS           |
		  | Site               | ASSET.SITEID           |
          | Type               | ASSET.ASSETTYPE        |
          | Asset Template     | ASSET.TEMPLATEID       |
		  | Moved              | ASSET.MOVED            |
 		  | Calibration        | ASSET.ISCALIBRATION    |
		  | Returned To Vendor | ASSET.RETURNEDTOVENDOR |
	  And I only see these fields in this order in the 'Details' section:
		  | field                      | attribute                 |
		  | Parent                     | ASSET.PARENT              |
		  | Parent description         | ASSET.DESCRIPTION         |
		  | Maintain Hierarchy         | ASSET.MAINTHIERCHY        |
		  | Location                   | ASSET.LOCATION            |
		  | Location description       | LOCATIONS.DESCRIPTION     |
		  | Bin                        | ASSET.BINNUM              |
		  | Rotating Item              | ASSET.ITEMNUM             |
		  | Rotating Item description  | ITEM.DESCRIPTION          |
		  | Condition Code             | ASSET.CONDITIONCODE       |
		  | Condition Code description | ITEMCONDITION.DESCRIPTION |
		  | Meter Group                | ASSET.GROUPNAME           |
		  | Meter Group description    | METERGROUP.DESCRIPTION    |
		  | Usage                      | ASSET.USAGE               |
		  | Calendar                   | ASSET.CALNUM              |
		  | Shift                      | ASSET.SHIFTNUM            |
		  | Priority                   | ASSET.PRIORITY            |
		  | Serial #                   | ASSET.SERIALNUM           |
		  | Failure Class              | ASSET.FAILURECODE         |
		  | Item Type                  | ASSET.ITEMTYPE            |
		  | Tool Rate                  | ASSET.TOOLRATE            |
	  And I check off the 'Calibration' checkbox
	  And I select the Asset tab
	  And I only see these fields in this order in the 'Calibration Details' section:
	      | field                           | attribute |
	      | Loop Location                   | ASSET.PLUSCLPLOC |
	      | Loop Location description       | LOCATIONS.DESCRIPTION |
	      | Physical Location               | ASSET.PLUSCPHYLOC |
	      | Is M&TE                         | ASSET.PLUSCISMTE |
	      | M&TE Classification             | ASSET.PLUSCISMTECLASS |
	      | Is Contaminated                 | ASSET.PLUSCISCONTAM |
	      | Is Contaminated Description     | ASSET.PLUSCISCONDESC |
	      | Buffer Solution                 | ASSET.PLUSCSOLUTION |
	      | Internal Calibration            | ASSET.PLUSCISINHOUSECAL |
	      | Calibration Vendor              | ASSET.PLUSCVENDOR |
	      | Calibration Vendor description  | COMPANIES.NAME |
	      | Class                           | ASSET.PLUSCCLASS |
	      | Operating Range From            | ASSET.PLUSCOPRGEFROM_NP |
	      | To                              | ASSET.PLUSCOPRGETO_NP |
	      | Units                           | ASSET.PLUSCOPRGEEU |
	      | Next Calibration Due Date       | ASSET.PLUSCDUEDATE_NP |
	      | Due Date Extended               | ASSET.PLUSCPMEXTDATE |
	      | Asset Department                | ASSET.PLUSCASSETDEPT |
	      | Model Number                    | ASSET.PLUSCMODELNUM |
	      | Loop Number                     | ASSET.PLUSCLOOPNUM |
	      | Accuracy EU +                   | ASSET.PLUSCSUMEU_NP |
	      | %Span +                         | ASSET.PLUSCSUMSPAN_NP |
	      | %URV +                          | ASSET.PLUSCSUMURV_NP |
	      | %Reading                        | ASSET.PLUSCSUMREAD_NP |
	      | Applied As                      | ASSET.PLUSCSUMDIR |
	  And I uncheck the 'Calibration' checkbox
	  And I only see these fields in this order in the 'Purchase Information' section:
	  	  | field                    | attribute           |
	  	  | Vendor                   | ASSET.VENDOR        |
	  	  | Vendor description       | COMPANIES.NAME      |
	  	  | Manufacturer             | ASSET.MANUFACTURER  |
	  	  | Manufacturer description | COMPANIES.NAME      |
	  	  | Installation Date        | ASSET.INSTALLDATE   |
	  	  | Purchase Price           | ASSET.PURCHASEPRICE |
	  	  | Replacement Cost         | ASSET.REPLACECOST   |
	  	  | PO                       | ASSETTRANS.PONUM    |  
	  And I only see these fields in this order in the 'Costs' section:
	  	  | field         | attribute          |
	  	  | Total Cost    | ASSET.TOTALCOST    |
	  	  | YTD Cost      | ASSET.YTDCOST      |
	  	  | Budgeted      | ASSET.BUDGETCOST   |
	  	  | Inventory     | ASSET.INVCOST      |  
	  	  | Current Value | ASSET.CURRENTVALUE |
	  And I only see these fields in this order in the 'Downtime' section:
	  	  | field          | attribute              |
	  	  | Asset Up       | ASSET.ISRUNNING        |
	  	  | Status Date    | ASSETSTATUS.CHANGEDATE |
	  	  | Total Downtime | ASSET.TOTDOWNTIME      |  
	  And I only see these fields in this order in the 'Modified' section:
	  	  | field        | attribute        |
	  	  | Changed By   | ASSET.CHANGEBY   |
	  	  | Changed Date | ASSET.CHANGEDATE |
	  And I logout	   
	  	   
  Scenario: 7.5 OTB or w/ Calibration; Spare Parts tab 
    
     When I initiate search in the Assets table
      And I select the 1st row in the Assets table
      And I select the 'Spare Parts' tab
     
     Then I only see these fields in this order in the header section:
		  | field              | attribute         |
		  | Asset              | ASSET.ASSETNUM    |
		  | Description        | ASSET.DESCRIPTION |
		  | Parent             | ASSET.PARENT      |
		  | Description        | ASSET.DESCRIPTION |
          | Site               | ASSET.SITEID      |
	  And I only see these columns in this order in the 'Subassemblies' table:
		  | column               | attribute             |
		  | Asset                | ASSET.ASSETNUM        |
		  | Description          | ASSET.DESCRIPTION     |
		  | Location             | ASSET.LOCATION        |
		  | Description          | LOCATIONS.DESCRIPTION |
	  And I click the 'New Row' button in the 'Subassemblies' table
	  And I only see these fields in this order in the 'Details' section in the 'Subassemblies' table details:
		  | field                | attribute             |
		  | Asset                | ASSET.ASSETNUM        |
		  | Description          | ASSET.DESCRIPTION     |
		  | Location             | ASSET.LOCATION        |
		  | Description          | LOCATIONS.DESCRIPTION |
	  And I only see these columns in this order in the 'Spare Parts' table:
		  | column           | attribute             |
		  | Item             | SPAREPART.ITEMNUM     |
		  | Description      | ITEM.DESCRIPTION      |
		  | Quantity         | SPAREPART.QUANTITY    |
		  | IssuedQty        | SPAREPART.ISSUEDQTY   |
		  | Remarks          | SPAREPART.DESCRIPTION |
	  And I see the 'Select Spare Parts' button in the 'Spare Parts' table 
	  And I click the 'New Row' button in the 'Spare Parts' table
	  And I only see these fields in this order in the 'Details' section in the 'Spare Parts' table details:
		  | field            | attribute             |
		  | Item             | SPAREPART.ITEMNUM     |
		  | Description      | ITEM.DESCRIPTION      |
		  | Quantity         | SPAREPART.QUANTITY    |
		  | IssuedQty        | SPAREPART.ISSUEDQTY   |
		  | Remarks          | SPAREPART.DESCRIPTION |
	  And I logout
	  
  Scenario: 7.6 OTB or w/ Calibration; Spare Parts tab 
    
     When I initiate search in the Assets table
      And I select the 4th row in the Assets table
      And I select the 'Spare Parts' tab
     
     Then I only see these fields in this order in the header section:
		  | field                    | attribute         |
		  | Asset                    | ASSET.ASSETNUM    |
		  | Asset description        | ASSET.DESCRIPTION |
		  | Parent                   | ASSET.PARENT      |
		  | Parent description       | ASSET.DESCRIPTION |
          | Site                     | ASSET.SITEID      |
	  And I only see these columns in this order in the 'Subassemblies' table:
		  | column               | attribute             |
		  | Asset                | ASSET.ASSETNUM        |
		  | Description          | ASSET.DESCRIPTION     |
		  | Location             | ASSET.LOCATION        |
		  | Description          | LOCATIONS.DESCRIPTION |
	  And I click the 'New Row' button in the 'Subassemblies' table
	  And I only see these fields in this order in the 'Details' section in the 'Subassemblies' table details:
		  | field                | attribute             |
		  | Asset                | ASSET.ASSETNUM        |
		  | Asset description    | ASSET.DESCRIPTION     |
		  | Location             | ASSET.LOCATION        |
		  | Location description | LOCATIONS.DESCRIPTION |
	  And I only see these columns in this order in the 'Spare Parts' table:
		  | column           | attribute             |
		  | Item             | SPAREPART.ITEMNUM     |
		  | Description      | ITEM.DESCRIPTION      |
		  | Quantity         | SPAREPART.QUANTITY    |
		  | IssuedQty        | SPAREPART.ISSUEDQTY   |
		  | Remarks          | SPAREPART.DESCRIPTION |
	  And I see the 'Select Spare Parts' button in the 'Spare Parts' table 
	  And I click the 'New Row' button in the 'Spare Parts' table
	  And I only see these fields in this order in the 'Details' section in the 'Spare Parts' table details:
		  | field            | attribute             |
		  | Item             | SPAREPART.ITEMNUM     |
		  | Item description | ITEM.DESCRIPTION      |
		  | Quantity         | SPAREPART.QUANTITY    |
		  | IssuedQty        | SPAREPART.ISSUEDQTY   |
		  | Remarks          | SPAREPART.DESCRIPTION |
	  And I logout
	 
  Scenario: 7.5 OTB or w/ Calibration; Safety tab 

     When I initiate search in the Assets table
      And I select the 1st row in the Assets table
	  And I select the 'Safety' tab
	  
	 Then I only see these fields in this order in the header section:
		  | field             | attribute         |
		  | Asset             | ASSET.ASSETNUM    |
		  | Description       | ASSET.DESCRIPTION |
		  | Site              | ASSET.SITEID      |
	  
	 When I select the 'Hazards and Precautions' tab
	  
	 Then I only see these columns in this order in the 'Hazards' table:
		  | column                       | attribute              |
		  | Hazard                       | SAFETYLEXICON.HAZARDID |
		  | Description                  | HAZARD.DESCRIPTION     |
		  | Can Have Hazardous Materials | HAZARD.HAZMATENABLED   |
		  | Type                         | HAZARD.HAZARDTYPE      |
	  And I click the 'New Row' button in the 'Hazards' table
	  And I only see these fields in this order in the 'Details' section in the 'Hazards' table details:
		  | field                        | attribute                   |
		  | Hazard                       | SAFETYLEXICON.HAZARDID      |
		  | Description                  | HAZARD.DESCRIPTION          |
		  | Can Have Hazardous Materials | HAZARD.HAZMATENABLED        |
		  | Type                         | HAZARD.HAZARDTYPE           |
	  And I only see these columns in this order in the 'Precautions for' table:
		  | column                 | attribute               |
		  | Precaution             | HAZARDPREC.PRECAUTIONID |
		  | Description            | PRECAUTION.DESCRIPTION  |
	  And I select the 'Hazardous Materials' tab
	  And I only see these columns in this order in the 'Hazardous Materials' table:
		  | column              | attribute                 |
		  | Hazard              | SAFETYLEXICON.HAZARDID    |
		  | Description         | HAZARD.DESCRIPTION        |
		  | MSDS                | HAZARD.MSDSNUM            |
		  | Health              | HAZARD.HEALTHRATING       |
		  | Flammability        | HAZARD.FLAMMABILITYRATING |
		  | Reactivity          | HAZARD.REACTIVITYRATING   |
		  | Contact             | HAZARD.CONTACTRATING      |
      And I click the 'New Row' button in the 'Hazardous Materials' table
      And I only see these fields in this order in the 'Details' section in the 'Hazardous Materials' table details:
		  | field              | attribute               |
		  | Hazard             | SAFETYLEXICON.HAZARDID  |
		  | Description        | HAZARD.DESCRIPTION      |
		  | MSDS               | HAZARD.MSDSNUM          |
	  And I only see these fields in this order in the 'NFPA Rating' section in the 'Hazardous Materials' table details:
		  | field        | attribute                 |
		  | Health       | HAZARD.HEALTHRATING       |
		  | Flammability | HAZARD.FLAMMABILITYRATING |
		  | Reactivity   | HAZARD.REACTIVITYRATING   |
		  | Contact      | HAZARD.CONTACTRATING      |
	  And I select the 'Lock Out/Tag Out' tab
	  And I only see these columns in this order in the 'Hazards' table:
		  | column             | attribute              |
		  | Hazard             | SAFETYLEXICON.HAZARDID |
		  | Description        | HAZARD.DESCRIPTION     |
		  | Type               | HAZARD.HAZARDTYPE      |
      And I click the 'New Row' button in the 'Hazards' table
      And I only see these fields in this order in the 'Details' section in the 'Hazards' table details:
		  | field              | attribute              |
		  | Hazard             | SAFETYLEXICON.HAZARDID |
		  | Description        | HAZARD.DESCRIPTION     |
		  | Type               | HAZARD.HAZARDTYPE      |
	  And I only see these columns in this order in the 'Tag Out Procedures for' table:
		  | column              | attribute              |
		  | Tag Out             | SAFETYLEXICON.TAGOUTID |
		  | Description         | TAGOUT.DESCRIPTION     |
		  | Asset               | TAGOUT.ASSETNUM        |
		  | Location            | TAGOUT.LOCATION        |
	  And I click the 'New Row' button in the 'Tag Out Procedures for' table
	  And I only see these fields in this order in the 'Details' section in the 'Tag Out Procedures for' table details:
		  | field                   | attribute               |
		  | Tag Out                 | SAFETYLEXICON.TAGOUTID  |
		  | Description             | TAGOUT.DESCRIPTION      |
		  | Location                | TAGOUT.LOCATION         |
		  | Description             | TAGOUT.ASSETDESCRIPTION |
		  | Asset                   | TAGOUT.ASSETNUM         |
		  | Required State          | TAGOUT.REQUIREDSTATE    |
		  | Apply Sequence          | SAFETYLEXICON.APPLYSEQ  |
		  | Remove Sequence         | SAFETYLEXICON.REMOVESEQ |
	  And I only see these columns in this order in the 'Lock Out Operations for' table:
		  | column                        | attribute                 |
		  | Asset                         | LOCKOUT.ASSETNUM          |
		  | Location                      | LOCKOUT.LOCATION          |
		  | Description                   | LOCKOUT.DEVICEDESCRIPTION |
		  | Locking Device Required State | LOCKOUT.REQUIREDSTATE     |
		  | Apply Sequence                | TAGLOCK.APPLYSEQ          |
		  | Remove Sequence               | TAGLOCK.REMOVESEQ         |
	  
	 When I select the 'Safety-Related Assets' tab
	 
	 Then I only see these columns in this order in the 'Safety Related Assets' table:
		  | column      | attribute                      |
		  | Asset       | SPRELATEDASSET.RELATEDASSET    |
		  | Location    | SPRELATEDASSET.RELATEDLOCATION |
		  | Description |                                |
	  And I click the 'New Row' button in the 'Safety Related Assets' table
	  And I only see these fields in this order in the 'Details' section in the 'Safety Related Assets' table details:
		  | field       | attribute                          |
		  | Asset       | SPRELATEDASSET.RELATEDASSET        |
		  | Location    | SPRELATEDASSET.RELATEDLOCATION     |
		  | Description | SPRELATEDASSET.RELASSETDESCRIPTION | 
	  And I logout
	  
  Scenario: 7.6 OTB or w/ Calibration; Safety tab 

     When I initiate search in the Assets table
      And I select the 1st row in the Assets table
	  And I select the 'Safety' tab
	  
	 Then I only see these fields in this order in the header section:
		  | field             | attribute         |
		  | Asset             | ASSET.ASSETNUM    |
		  | Asset description | ASSET.DESCRIPTION |
		  | Site              | ASSET.SITEID      |
	  
	 When I select the 'Hazards and Precautions' tab
	  
	 Then I only see these columns in this order in the 'Hazards' table:
		  | column                       | attribute              |
		  | Hazard                       | SAFETYLEXICON.HAZARDID |
		  | Description                  | HAZARD.DESCRIPTION     |
		  | Can Have Hazardous Materials | HAZARD.HAZMATENABLED   |
		  | Type                         | HAZARD.HAZARDTYPE      |
	  And I click the 'New Row' button in the 'Hazards' table
	  And I only see these fields in this order in the 'Details' section in the 'Hazards' table details:
		  | field                        | attribute                   |
		  | Hazard                       | SAFETYLEXICON.HAZARDID      |
		  | Hazard description           | HAZARD.DESCRIPTION          |
		  | Can Have Hazardous Materials | HAZARD.HAZMATENABLED        |
		  | Type                         | HAZARD.HAZARDTYPE           |
	  And I only see these columns in this order in the 'Precautions for' table:
		  | column                 | attribute               |
		  | Precaution             | HAZARDPREC.PRECAUTIONID |
		  | Description            | PRECAUTION.DESCRIPTION  |
	  And I select the 'Hazardous Materials' tab
	  And I only see these columns in this order in the 'Hazardous Materials' table:
		  | column              | attribute                 |
		  | Hazard              | SAFETYLEXICON.HAZARDID    |
		  | Description         | HAZARD.DESCRIPTION        |
		  | MSDS                | HAZARD.MSDSNUM            |
		  | Health              | HAZARD.HEALTHRATING       |
		  | Flammability        | HAZARD.FLAMMABILITYRATING |
		  | Reactivity          | HAZARD.REACTIVITYRATING   |
		  | Contact             | HAZARD.CONTACTRATING      |
      And I click the 'New Row' button in the 'Hazardous Materials' table
      And I only see these fields in this order in the 'Details' section in the 'Hazardous Materials' table details:
		  | field              | attribute               |
		  | Hazard             | SAFETYLEXICON.HAZARDID  |
		  | Hazard description | HAZARD.DESCRIPTION      |
		  | MSDS               | HAZARD.MSDSNUM          |
	  And I only see these fields in this order in the 'NFPA Rating' section in the 'Hazardous Materials' table details:
		  | field        | attribute                 |
		  | Health       | HAZARD.HEALTHRATING       |
		  | Flammability | HAZARD.FLAMMABILITYRATING |
		  | Reactivity   | HAZARD.REACTIVITYRATING   |
		  | Contact      | HAZARD.CONTACTRATING      |
	  And I select the 'Lock Out/Tag Out' tab
	  And I only see these columns in this order in the 'Hazards' table:
		  | column             | attribute              |
		  | Hazard             | SAFETYLEXICON.HAZARDID |
		  | Description        | HAZARD.DESCRIPTION     |
		  | Type               | HAZARD.HAZARDTYPE      |
      And I click the 'New Row' button in the 'Hazards' table
      And I only see these fields in this order in the 'Details' section in the 'Hazards' table details:
		  | field              | attribute              |
		  | Hazard             | SAFETYLEXICON.HAZARDID |
		  | Hazard description | HAZARD.DESCRIPTION     |
		  | Type               | HAZARD.HAZARDTYPE      |
	  And I only see these columns in this order in the 'Tag Out Procedures for' table:
		  | column              | attribute              |
		  | Tag Out             | SAFETYLEXICON.TAGOUTID |
		  | Description         | TAGOUT.DESCRIPTION     |
		  | Asset               | TAGOUT.ASSETNUM        |
		  | Location            | TAGOUT.LOCATION        |
	  And I click the 'New Row' button in the 'Tag Out Procedures for' table
	  And I only see these fields in this order in the 'Details' section in the 'Tag Out Procedures for' table details:
		  | field                   | attribute               |
		  | Tag Out                 | SAFETYLEXICON.TAGOUTID  |
		  | Tag Out description     | TAGOUT.DESCRIPTION      |
		  | Location                | TAGOUT.LOCATION         |
		  | Location description    | TAGOUT.ASSETDESCRIPTION |
		  | Asset                   | TAGOUT.ASSETNUM         |
		  | Required State          | TAGOUT.REQUIREDSTATE    |
		  | Apply Sequence          | SAFETYLEXICON.APPLYSEQ  |
		  | Remove Sequence         | SAFETYLEXICON.REMOVESEQ |
	  And I only see these columns in this order in the 'Lock Out Operations for' table:
		  | column                        | attribute                 |
		  | Asset                         | LOCKOUT.ASSETNUM          |
		  | Location                      | LOCKOUT.LOCATION          |
		  | Description                   | LOCKOUT.DEVICEDESCRIPTION |
		  | Locking Device Required State | LOCKOUT.REQUIREDSTATE     |
		  | Apply Sequence                | TAGLOCK.APPLYSEQ          |
		  | Remove Sequence               | TAGLOCK.REMOVESEQ         |
	  
	 When I select the 'Safety-Related Assets' tab
	 
	 Then I only see these columns in this order in the 'Safety Related Assets' table:
		  | column      | attribute                      |
		  | Asset       | SPRELATEDASSET.RELATEDASSET    |
		  | Location    | SPRELATEDASSET.RELATEDLOCATION |
		  | Description |                                |
	  And I click the 'New Row' button in the 'Safety Related Assets' table
	  And I only see these fields in this order in the 'Details' section in the 'Safety Related Assets' table details:
		  | field       | attribute                          |
		  | Asset       | SPRELATEDASSET.RELATEDASSET        |
		  | Location    | SPRELATEDASSET.RELATEDLOCATION     |
		  | Description | SPRELATEDASSET.RELASSETDESCRIPTION | 
	  And I logout
	  
  Scenario: 7.5 OTB or w/ Calibration; Meters tab 

     When I initiate search in the Assets table
      And I select the 1st row in the Assets table
	  And I select the 'Meters' tab
	 
	 Then I only see these fields in this order in the header section:
		  | field         | attribute              |
		  | Asset         | ASSET.ASSETNUM         |
		  | Description   | ASSET.DESCRIPTION      |
		  | Meter Group   | ASSET.GROUPNAME        |
		  | Description   | METERGROUP.DESCRIPTION |
		  | Site          | ASSET.SITEID           |
	  And I only see these columns in this order in the 'Meters' table:
		  | column            | attribute                |
		  | Sequence          | ASSETMETER.SEQUENCE      |
		  | Meter             | ASSETMETER.METERNAME     |
		  | Description       | METER.DESCRIPTION        |
		  | Meter Type        | METER.METERTYPE          |
		  | Unit of Measure   | ASSETMETER.MEASUREUNITID |
		  | Active            | ASSETMETER.ACTIVE        |
	 
	 When I click the 'New Row' button in the 'Meters' table
	 
	 Then I only see these fields in this order in the 'Meter Details' section in the 'Meters' table details:
		  | field                  | attribute                     |
		  | Sequence               | ASSETMETER.SEQUENCE           |
		  | Meter                  | ASSETMETER.METERNAME          |
		  | Description            | METER.DESCRIPTION             |
		  | Meter Type             | METER.METERTYPE               |
		  | Unit of Measure        | ASSETMETER.MEASUREUNITID      |
		  | Active                 | ASSETMETER.ACTIVE             |
		  | Point                  | ASSETMETER.POINTNUM           |
		  | Last Reading           | ASSETMETER.LASTREADING        |
		  | Last Reading Date      | ASSETMETER.LASTREADINGDATE    |
		  | Last Reading Inspector | ASSETMETER.LASTREADINGINSPCTR |
		  | Remarks                | ASSETMETER.REMARKS            |  
	  And I only see these fields in this order in the 'Continuous Meter Details' section in the 'Meters' table details:
		  | field                       | attribute                     |
		  | Average Calculation Method  | ASSETMETER.AVGCALCMETHOD      |
		  | Description                 | SYNONYMDOMAIN.DESCRIPTION     |
		  | Sliding Window Size         | ASSETMETER.SLIDINGWINDOWSIZE  |
		  | Average Units/Day           | ASSETMETER.AVERAGE            |
		  | Life to Date for Asset      | ASSETMETER.LIFETODATE         |
		  | Rollover                    | ASSETMETER.ROLLOVER           |
		  | Reading Type                | ASSETMETER.READINGTYPE        |
		  | Accept Rolldown From        | ASSETMETER.ROLLDOWNSOURCE     |
	  And I logout
	  
  Scenario: 7.6 OTB or w/ Calibration; Meters tab 

     When I initiate search in the Assets table
      And I select the 1st row in the Assets table
	  And I select the 'Meters' tab
	 
	 Then I only see these fields in this order in the header section:
		  | field                   | attribute              |
		  | Asset                   | ASSET.ASSETNUM         |
		  | Asset description       | ASSET.DESCRIPTION      |
		  | Meter Group             | ASSET.GROUPNAME        |
		  | Meter Group description | METERGROUP.DESCRIPTION |
		  | Site                    | ASSET.SITEID           |
	  And I only see these columns in this order in the 'Meters' table:
		  | column            | attribute                |
		  | Sequence          | ASSETMETER.SEQUENCE      |
		  | Meter             | ASSETMETER.METERNAME     |
		  | Description       | METER.DESCRIPTION        |
		  | Meter Type        | METER.METERTYPE          |
		  | Unit of Measure   | ASSETMETER.MEASUREUNITID |
		  | Active            | ASSETMETER.ACTIVE        |
	 
	 When I click the 'New Row' button in the 'Meters' table
	 
	 Then I only see these fields in this order in the 'Meter Details' section in the 'Meters' table details:
		  | field                  | attribute                     |
		  | Sequence               | ASSETMETER.SEQUENCE           |
		  | Meter                  | ASSETMETER.METERNAME          |
		  | Meter description      | METER.DESCRIPTION             |
		  | Meter Type             | METER.METERTYPE               |
		  | Unit of Measure        | ASSETMETER.MEASUREUNITID      |
		  | Active                 | ASSETMETER.ACTIVE             |
		  | Point                  | ASSETMETER.POINTNUM           |
		  | Last Reading           | ASSETMETER.LASTREADING        |
		  | Last Reading Date      | ASSETMETER.LASTREADINGDATE    |
		  | Last Reading Inspector | ASSETMETER.LASTREADINGINSPCTR |
		  | Remarks                | ASSETMETER.REMARKS            |  
	  And I only see these fields in this order in the 'Continuous Meter Details' section in the 'Meters' table details:
		  | field                                  | attribute                     |
		  | Average Calculation Method             | ASSETMETER.AVGCALCMETHOD      |
		  | Average Calculation Method description | SYNONYMDOMAIN.DESCRIPTION     |
		  | Sliding Window Size                    | ASSETMETER.SLIDINGWINDOWSIZE  |
		  | Average Units/Day                      | ASSETMETER.AVERAGE            |
		  | Life to Date for Asset                 | ASSETMETER.LIFETODATE         |
		  | Rollover                               | ASSETMETER.ROLLOVER           |
		  | Reading Type                           | ASSETMETER.READINGTYPE        |
		  | Accept Rolldown From                   | ASSETMETER.ROLLDOWNSOURCE     |
	  And I logout
	  
  Scenario: 7.5 OTB or w/ Calibration; Specifications tab 

     When I initiate search in the Assets table
      And I select the 1st row in the Assets table
	  And I select the 'Specifications' tab

	 Then I only see these fields in this order in the header section:
		  | field             | attribute                         |
		  | Asset             | ASSET.ASSETNUM                    |
		  | Description       | ASSET.DESCRIPTION                 |
		  | Classification    | CLASSSTRUCTURE.HIERARCHYPATH      |
		  | Site              | ASSET.SITEID                      |
		  | Class Description | CLASSSTRUCTURE.DESCRIPTION_CLASS  |
	  And I only see these columns in this order in the 'Specifications' table:
		  | column                | attribute                  |
		  | Attribute             | ASSETSPEC.ASSETATTRID      |
		  | Description           | ASSETATTRIBUTE.DESCRIPTION |
		  | Data Type             | ASSETATTRIBUTE.DATATYPE    |
		  | Alphanumeric Value    | ASSETSPEC.ALNVALUE         |
		  | Numeric Value         | ASSETSPEC.NUMVALUE         |
		  | Unit of Measure       | ASSETSPEC.MEASUREUNITID    |
		  | Table Value           | ASSETSPEC.TABLEVALUE       |
	  
	 When I click the 'New Row' button in the 'Specifications' table

	 Then I only see these fields in this order in the 'Details' section in the 'Specifications' table details:
		  | field                 | attribute                   |
		  | Attribute             | ASSETSPEC.ASSETATTRID       |
		  | Description           | ASSETATTRIBUTE.DESCRIPTION  |
		  | Data Type             | ASSETATTRIBUTE.DATATYPE     |
		  | Unit of Measure       | ASSETSPEC.MEASUREUNITID     |
		  | Section               | ASSETSPEC.SECTION           | 
		  | Alphanumeric Value    | ASSETSPEC.ALNVALUE          |
		  | Numeric Value         | ASSETSPEC.NUMVALUE          |
		  | Table Value           | ASSETSPEC.TABLEVALUE        |
		  | Inherited from        | CLASSSPEC.INHERITEDFROM     |
		  | Apply Down Hierarchy  | CLASSSPEC.APPLYDOWNHIER     | 
	  And I logout
	  
  Scenario: 7.6 OTB or w/ Calibration; Specifications tab 

     When I initiate search in the Assets table
      And I select the 2nd row in the Assets table
	  And I select the 'Specifications' tab

	 Then I only see these fields in this order in the header section:
		  | field             | attribute                         |
		  | Asset             | ASSET.ASSETNUM                    |
		  | Asset description | ASSET.DESCRIPTION                 |
		  | Classification    | CLASSSTRUCTURE.HIERARCHYPATH      |
		  | Site              | ASSET.SITEID                      |
		  | Class Description | CLASSSTRUCTURE.DESCRIPTION_CLASS  |
	  And I only see these columns in this order in the 'Specifications' table:
		  | column                | attribute                  |
		  | Attribute             | ASSETSPEC.ASSETATTRID      |
		  | Description           | ASSETATTRIBUTE.DESCRIPTION |
		  | Data Type             | ASSETATTRIBUTE.DATATYPE    |
		  | Alphanumeric Value    | ASSETSPEC.ALNVALUE         |
		  | Numeric Value         | ASSETSPEC.NUMVALUE         |
		  | Unit of Measure       | ASSETSPEC.MEASUREUNITID    |
		  | Table Value           | ASSETSPEC.TABLEVALUE       |
	  
	 When I click the 'New Row' button in the 'Specifications' table

	 Then I only see these fields in this order in the 'Details' section in the 'Specifications' table details:
		  | field                 | attribute                   |
		  | Attribute             | ASSETSPEC.ASSETATTRID       |
		  | Attribute description | ASSETATTRIBUTE.DESCRIPTION  |
		  | Data Type             | ASSETATTRIBUTE.DATATYPE     |
		  | Unit of Measure       | ASSETSPEC.MEASUREUNITID     |
		  | Section               | ASSETSPEC.SECTION           | 
		  | Alphanumeric Value    | ASSETSPEC.ALNVALUE          |
		  | Numeric Value         | ASSETSPEC.NUMVALUE          |
		  | Table Value           | ASSETSPEC.TABLEVALUE        |
		  | Inherited from        | CLASSSPEC.INHERITEDFROM     |
		  | Apply Down Hierarchy  | CLASSSPEC.APPLYDOWNHIER     | 
	  And I logout
	  
  Scenario: 7.5 OTB or w/ Calibration; Relationships tab 

     When I initiate search in the Assets table
      And I select the 1st row in the Assets table
	  And I select the 'Relationships' tab
	  
	 Then I only see these fields in this order in the header section:
		  | field             | attribute         |
		  | Asset             | ASSET.ASSETNUM    |
		  | Description       | ASSET.DESCRIPTION |
		  | Site              | ASSET.SITEID      |
	  And I only see these columns in this order in the 'Relationships' table:
		  | column         | attribute                           |
		  | Sequence       | ASSETLOCRELATION.RELSEQUENCENUM     |
		  | Source Asset   | ASSETLOCRELATION.SOURCEASSETNUM     |
		  | Relationship   | ASSETLOCRELATION.ASSETRELATIONNUM   |
		  | Target Asset   | ASSETLOCRELATION.TARGETASSETNUM     |
		 
	 When I click the 'New Row' button in the 'Relationships' table

	 Then I only see these fields in this order in the 'Details' section in the 'Relationships' table details:
		  | field              | attribute                         |
		  | Sequence Number    | ASSETLOCRELATION.RELSEQUENCENUM   |
		  | Source Asset       | ASSETLOCRELATION.SOURCEASSETNUM   |
		  | Description        | ASSET.DESCRIPTION                 |
		  | Relationship       | ASSETLOCRELATION.ASSETRELATIONNUM |
		  | Description        | RELATION.DESCRIPTION              |
		  | Target Asset       | ASSETLOCRELATION.TARGETASSETNUM   |
		  | Description        | ASSET.DESCRIPTION                 |
		  | Source Location    | ASSETLOCRELATION.SOURCELOCATION   |
		  | Description        | LOCATIONS.DESCRIPTION             |
		  | Use As Reference   | ASSETLOCRELATION.ISLINEARREF      |
		  | Target Location    | ASSETLOCRELATION.TARGETLOCATION   |
		  | Description        | LOCATIONS.DESCRIPTION             |
	  And I logout
	  
  Scenario: 7.6 OTB or w/ Calibration; Relationships tab 

     When I initiate search in the Assets table
      And I select the 1st row in the Assets table
	  And I select the 'Relationships' tab
	  
	 Then I only see these fields in this order in the header section:
		  | field             | attribute                  |
		  | Asset             | ASSET.ASSETNUM             |
		  | Asset description | ASSET.DESCRIPTION          |
		  | Site              | ASSET.SITEID               |
		  | View All          | ASSET.RELATIONSHIPFILTERBY |
	  And I only see these columns in this order in the 'Relationships' table:
		  | column         | attribute                           |
		  | Sequence       | ASSETLOCRELATION.RELSEQUENCENUM     |
		  | Source Asset   | ASSETLOCRELATION.SOURCEASSETNUM     |
		  | Relationship   | ASSETLOCRELATION.ASSETRELATIONNUM   |
		  | Target Asset   | ASSETLOCRELATION.TARGETASSETNUM     |
		 
	 When I click the 'New Row' button in the 'Relationships' table

	 Then I only see these fields in this order in the 'Details' section in the 'Relationships' table details:
		  | field                       | attribute                         |
		  | Sequence Number             | ASSETLOCRELATION.RELSEQUENCENUM   |
		  | Source Asset                | ASSETLOCRELATION.SOURCEASSETNUM   |
		  | Source Asset description    | ASSET.DESCRIPTION                 |
		  | Relationship                | ASSETLOCRELATION.ASSETRELATIONNUM |
		  | Relationship description    | RELATION.DESCRIPTION              |
		  | Target Asset                | ASSETLOCRELATION.TARGETASSETNUM   |
		  | Target Asset description    | ASSET.DESCRIPTION                 |
		  | Source Location             | ASSETLOCRELATION.SOURCELOCATION   |
		  | Source Location description | LOCATIONS.DESCRIPTION             |
		  | Use As Reference            | ASSETLOCRELATION.ISLINEARREF      |
		  | Target Location             | ASSETLOCRELATION.TARGETLOCATION   |
		  | Target Location description | LOCATIONS.DESCRIPTION             |
	  And I logout
	  
  Scenario: 7.5 OTB or w/ Calibration; Work tab

     When I initiate search in the Assets table
      And I select the 1st row in the Assets table
	  And I select the 'Work' tab
	  
	 Then I only see these fields in this order in the header section:
		  | field             | attribute         |
		  | Asset             | ASSET.ASSETNUM    |
		  | Description       | ASSET.DESCRIPTION |
		  | Site              | ASSET.SITEID      |
	  And I see the 'View Work Details' button in the header section

	 When I select the 'Work Orders' tab
      
     Then I only see these columns in this order in the 'Work Orders' table:
		  | column                 | attribute               |
		  | Work Order             | WORKORDER.WONUM         |
		  | Description            | WORKORDER.DESCRIPTION   |
		  | Status                 | WORKORDER.STATUS        |
		  | Status Date            | WORKORDER.STATUSDATE    |
		  | Target Start           | WORKORDER.TARGSTARTDATE |
		  | Target Finish          | WORKORDER.TARGCOMPDATE  |
		  | Scheduled Start        | WORKORDER.SCHEDSTART    |
		  | Scheduled Finish       | WORKORDER.SCHEDFINISH   |
		  | Actual Start           | WORKORDER.ACTSTART      |
		  | Actual Finish          | WORKORDER.ACTFINISH     |
		
	 When I select the 'Tickets' tab
	 
     Then I only see these columns in this order in the 'Tickets' table:
		  | column             | attribute             |
		  | Ticket             | TICKET.TICKETID       |
		  | Description        | TICKET.DESCRIPTION    |
		  | Status             | TICKET.STATUS         |
		  | Status Date        | TICKET.STATUSDATE     |
		  | Reported By        | TICKET.REPORTEDBY     |
		  | Reported Date      | TICKET.REPORTDATE     |
		  | Actual Finish      | TICKET.ACTUALFINISH   |
		  | Person Affected    | TICKET.AFFECTEDPERSON |
	  And I logout
	  
  Scenario: 7.6 OTB or w/ Calibration; Work tab

     When I initiate search in the Assets table
      And I select the 1st row in the Assets table
	  And I select the 'Work' tab
	  
	 Then I only see these fields in this order in the header section:
		  | field             | attribute         |
		  | Asset             | ASSET.ASSETNUM    |
		  | Asset description | ASSET.DESCRIPTION |
		  | Site              | ASSET.SITEID      |
	  And I see the 'View Work Details' button in the header section

	 When I select the 'Work Orders' tab
      
     Then I only see these columns in this order in the 'Work Orders' table:
		  | column                 | attribute               |
		  | Work Order             | WORKORDER.WONUM         |
		  | Description            | WORKORDER.DESCRIPTION   |
		  | Status                 | WORKORDER.STATUS        |
		  | Status Date            | WORKORDER.STATUSDATE    |
		  | Target Start           | WORKORDER.TARGSTARTDATE |
		  | Target Finish          | WORKORDER.TARGCOMPDATE  |
		  | Scheduled Start        | WORKORDER.SCHEDSTART    |
		  | Scheduled Finish       | WORKORDER.SCHEDFINISH   |
		  | Actual Start           | WORKORDER.ACTSTART      |
		  | Actual Finish          | WORKORDER.ACTFINISH     |
		
	 When I select the 'Tickets' tab
	 
     Then I only see these columns in this order in the 'Tickets' table:
		  | column             | attribute             |
		  | Ticket             | TICKET.TICKETID       |
		  | Description        | TICKET.DESCRIPTION    |
		  | Status             | TICKET.STATUS         |
		  | Status Date        | TICKET.STATUSDATE     |
		  | Reported By        | TICKET.REPORTEDBY     |
		  | Reported Date      | TICKET.REPORTDATE     |
		  | Actual Finish      | TICKET.ACTUALFINISH   |
		  | Person Affected    | TICKET.AFFECTEDPERSON |
	  And I logout
