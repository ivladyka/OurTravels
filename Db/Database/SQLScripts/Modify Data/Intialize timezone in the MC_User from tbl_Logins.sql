UPDATE
    dbo.Mc_User
SET
    dbo.Mc_User.TimeZoneId = (CASE dbo.tbl_Logins.sintHourOffset-5 
WHEN 0 THEN 'UTC'
WHEN 1 THEN 'Central Europe Standard Time'
WHEN 2 THEN 'E. Europe Standard Time'
WHEN 3 THEN 'Arabic Standard Time'
WHEN 3.5 THEN 'Iran Standard Time'
WHEN 4 THEN 'Russian Standard Time'
WHEN 4.5 THEN 'Afghanistan Standard Time'
WHEN 5 THEN 'West Asia Standard Time'
WHEN 5.5 THEN 'India Standard Time'
WHEN 5.75 THEN 'Nepal Standard Time'
WHEN 6 THEN 'Central Asia Standard Time'
WHEN 6.5 THEN 'Myanmar Standard Time'
WHEN 7 THEN 'SE Asia Standard Time'
WHEN 8 THEN 'North Asia Standard Time'
WHEN 9 THEN 'North Asia East Standard Time'
WHEN 9.5 THEN 'Cen. Australia Standard Time'
WHEN -1 THEN 'Azores Standard Time'
WHEN -2 THEN 'UTC-02'
WHEN -3 THEN 'E. South America Standard Time'
WHEN -3.5 THEN 'Newfoundland Standard Time'
WHEN -4 THEN 'Atlantic Standard Time'
WHEN -4.5 THEN 'Venezuela Standard Time'
WHEN -5 THEN 'Eastern Standard Time'
WHEN -6 THEN 'Central Standard Time'
WHEN -7 THEN 'Mountain Standard Time'
WHEN -8 THEN 'Pacific Standard Time'
WHEN -9 THEN 'Alaskan Standard Time'
WHEN -10 THEN 'Hawaiian Standard Time'
WHEN -11 THEN 'UTC-11'
WHEN -12 THEN 'Dateline Standard Time'
ELSE NULL END),
dbo.Mc_User.TimeFormat = (CASE WHEN dbo.tbl_Logins.tintDateFormat IN (0, 2) THEN 0 ELSE 1 END)
FROM
    dbo.Mc_User
INNER JOIN
    dbo.tbl_Logins
ON
    dbo.Mc_User.Email = dbo.tbl_Logins.Email
    
     
    


