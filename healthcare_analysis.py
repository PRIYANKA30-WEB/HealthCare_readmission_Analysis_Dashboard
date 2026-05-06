import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
df=pd.read_csv("hospital_readmission_dataset.csv")
print(df.head())  #To Check First 5 Rows
print(df.info())  #Basic Information about Data
print(df.isnull().sum()) #To Check Missing Values
print(df.describe()) #Summary Statistics
print(df["Readmitted Patients"].value_counts())  #Readmission Count
print(df.groupby("Department")["Readmitted Patients"].value_counts()) #Readmission By Department
print(df.groupby("Department")["Revenue Loss"].sum().sort_values(ascending=False)) #Revenue Loss By Department
print(df.corr(numeric_only=True)) #Correlation Analysis
plt.figure(figsize=(10,6))
sns.heatmap(df.corr(numeric_only=True),annot=True)
print(plt.show())  #Heatmap
sns.countplot(x="Readmitted Patients",data=df)
print(plt.show())  #Readmission Trend Chart
df.groupby("Department")["Revenue Loss"].sum().plot(kind="bar")
print(plt.show())  #Department_Wise Revenue Loss Chart
sns.boxplot(x="Readmitted Patients",y="age",data=df)
print(plt.show())