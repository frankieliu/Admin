https://stackoverflow.com/questions/14796620/google-spreadsheet-query-join-equivalent-function

Table 1
a d g
b e h
c f i

Table 2
c j m
a k n
b l o

Joined table
a d g k n
b e h l o 
c f i j m

Named Ranges
table1 : Sheet1!A1:C3
table2 : Sheet2!A1:C3
ID : Sheet1!A1:A3

=ArrayFormula(
   {
     table1,
     vlookup(ID,table2,COLUMN(Indirect("R1C2:R1C"&COLUMNS(table2),0)),0)
   }
)

indirect cell reference speficied by a string
indirect(,is_a1_notation) or in r1 notation
columns returns the number of columns
column returns the column number of a specified cell
vlookup(search_key, range, index, is_sorted)
is_sorted = 0 Extact match
is_sorted = 1 
