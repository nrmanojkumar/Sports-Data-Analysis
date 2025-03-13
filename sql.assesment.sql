SELECT * FROM assesment.sportskpi_assessment;
SELECT 
    COUNT(*) AS Total_Raids,
    SUM(CASE WHEN Outcome = 'Successful' THEN 1 ELSE 0 END) AS Successful_Raids
FROM 
    assesment.sportskpi_assessment;
SELECT 
    COUNT(*) AS Total_Tackles,
    SUM(CASE WHEN Outcome = 'Unsuccessful' THEN 1 ELSE 0 END) AS Successful_Tackles
FROM 
    assesment.sportskpi_assessment;
SELECT 
    COUNT(*) AS Successful_Raids_Against_6_7_Defenders
FROM 
   assesment.sportskpi_assessment
WHERE 
    Number_of_Defenders IN (6, 7) AND 
    Outcome = 'Successful';
SELECT 
    COUNT(*) AS Successful_Tackles_Against_1_2_3_Defenders
FROM 
     assesment.sportskpi_assessment
WHERE 
    Number_of_Defenders IN (1, 2, 3) AND 
    Outcome = 'Unsuccessful';
SELECT 
    SUM(CASE WHEN Attacking_Skill = 'Do_or_Die' AND Outcome = 'Successful' THEN 1 ELSE 0 END) / 
    CAST(SUM(CASE WHEN Attacking_Skill = 'Do_or_Die' THEN 1 ELSE 0 END) AS FLOAT) AS Do_or_Die_Success_Rate
FROM 
	assesment.sportskpi_assessment;



