/****** Script for SelectTopNRows command from SSMS  ******/
UPDATE [BWA_HelpDesk_1].[dbo].[CreationCats] SET 
  [vchName] = REPLACE([vchName], '&amp;', '&')
  WHERE vchName LIKE '%&amp;%'
UPDATE [BWA_HelpDesk_FQ].[dbo].[CreationCats] SET 
  [vchName] = REPLACE([vchName], '&amp;', '&')
  WHERE vchName LIKE '%&amp;%'