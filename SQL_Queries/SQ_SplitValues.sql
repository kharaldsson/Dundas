SELECT	 [tbl_field1]
		,[tbl_field2_tosplit]
        ,x.value
FROM [db_name].[dbo].[tbl_name] d
cross apply (select value from dbo.fn_Splitvarchar("tbl1_field2_tosplit", ',')) x