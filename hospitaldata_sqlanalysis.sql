CREATE DATABASE HealthCareProject;
USE HealthCareProject;
SELECT * FROM hospital_data;


#Total No.Of Patients
SELECT COUNT(*) AS Total_Patients
FROM hospital_data;

#Total Readmitted Patients
SELECT COUNT(*) AS Readmitted_Patients
FROM hospital_data
WHERE Readmitted_Patients='yes';


#Readmission Rate%

SELECT 
COUNT(CASE WHEN Readmitted_Patients='Yes' THEN 
1 END)*100.0/COUNT(*) AS 
Readmission_Rate FROM hospital_data;


#Avg.Length Of Stay(ALOS)

SELECT AVG(length_of_stay) AS Avg_Length_Of_Stay 
FROM hospital_data;

#Dept. Wise Patient Count

SELECT Department,COUNT(*) AS Total_Patients
FROM hospital_data
GROUP BY Department
ORDER BY Total_Patients DESC;

#Department Wise Readmissions

SELECT Department,COUNT(*) AS Readmitted_Count
FROM hospital_data
WHERE Readmitted_Patients='Yes'
GROUP BY Department
ORDER BY Readmitted_Count DESC;

#Revenue Loss By Dept.

SELECT Department,SUM(Revenue_Loss) AS Total_Revenue_Loss
FROM hospital_data
GROUP BY Department
ORDER BY Total_Revenue_Loss DESC;


#High Risk Patients

SELECT COUNT(*) AS High_Risk_patients
FROM hospital_data
WHERE Risk_Category='High Risk';

#Age Group Analysis

SELECT Age_Group,COUNT(*) AS Total_Patients
FROM hospital_data
GROUP BY Age_Group
ORDER BY Total_Patients DESC;

 

