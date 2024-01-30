use Works
go 

SELECT   * 
FROM sys.tables 
where name IN ('PHARMACY_DE'
,'person_aliases'
,'PATIENT_PHARMACY_DEF'
,'Patient_Community'
,'CED_Endpoints'
,'Community_Status_DE'
,'Encounter_ItemChild'
,'Item_Finding'
,'Act_Result_Extension'
,'Result_Communication_DE'
,'Order_Result_Mapper'
,'Order_Activity_Header'
,'Order_Activity'

  )