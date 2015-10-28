SELECT	[Tbl1_Field1]
		,[Tbl1_Field2_Index]
		,[Tbl2_Field1_Index]
		,[Tbl2_Field2_ToSplit]
        ,x.value
FROM [db_name].[dbo].[Tbl1]
LEFT OUTER JOIN [db_name].[dbo].[Tbl2]
ON [db_name].[dbo].[Tbl1].[Tbl1_Field2_Index] = [db_name].[dbo].[Tbl2].[Tbl2_Field1_Index]
cross apply (select value from dbo.fn_Splitvarchar([Tbl2_Field2_ToSplit],';'))x