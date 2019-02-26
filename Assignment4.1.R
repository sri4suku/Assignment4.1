df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
df1 #left table
df2 #right table

library(dplyr)

#Return only the rows in which the left table have match.
merge(df1,df2,by = "CustId")  # all=F (Default)
 
#Returns all rows from both tables, join records from the left which have matching keys in the right table.
merge(df1,df2,by = "CustId", all=T)
    
#Return all rows from the left table, and any rows with matching keys from the right table.
merge(df1,df2,by = "CustId", all.x=T)

#Return all rows from the right table, and any rows with matching keys from the left table.
merge(df1,df2,by = "CustId", all.y=T)
    
#Return a long format of the datasets without matching key.
merge(df1,df2, by=NULL)

#Keep only observations in df1 that match in df2.
semi_join(df1,df2,by = "CustId" )

#Drop all observations in df1 that match in df2.
anti_join(df1,df2,by = "CustId")
