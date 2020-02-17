# Waterreporttable
this easily creates tables

Documentation for package ‘Waterreporttable’ version 0.1.0

design	Find Design Characteristics

directory	Create the standard table directory tree

read	Simplifies reading csv files

shorten	A function which turn long column names into list type names

table	makes tables

trim	Trims the length and width of a data frame

Sample Work Flow:

directory()
tab1 <- read("filename")
des1 <- design(tab1)
tab1 <- trim(tab1)
table(tab1,d=des1,type="cos",Ititle="practicetable")
