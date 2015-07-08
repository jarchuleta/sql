

select OBJECT_NAME(ID) from sys.syscomments where text like '%fnParseEmail%'

 select * from sys.objects p WHERE OBJECT_DEFINITION(p.object_id) like '%tblWPSGateErrors%'



--Relationships
declare @TableName nvarchar(128) = 'tblLedger'

select OBJECT_NAME(f.parent_object_id) ParentTable,COL_NAME(f.parent_object_id,f.parent_column_id) ParentColumn,
OBJECT_NAME(f.referenced_object_id) ReferencedTable,COL_NAME(f.referenced_object_id,f.referenced_column_id) ReferencedColumn
from sys.foreign_key_columns f
where OBJECT_NAME(f.parent_object_id) = @TableName
or OBJECT_NAME(f.referenced_object_id) = @TableName
