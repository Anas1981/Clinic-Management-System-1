--===================== Mohamed Moafa ================================


-- عرض البيانات
create proc [dbo].[SP_Select_CheckType]
as
select * from Chekup_Type


go

-- اضافة البيانات
create proc [dbo].[SP_Insert_CheckType]
@Code nvarchar(8),
@TypeName nvarchar(50),
@Price decimal(15,2),
@Note nvarchar(MAX)
as
insert into Chekup_Type([Code],[TypeName],[Price],[Note]) values(@Code,@TypeName,@Price,@Note)



go
-- تعديل البيانات
create proc [dbo].[SP_Update_CheckType]
@Code nvarchar(8),
@TypeName nvarchar(50),
@Price decimal(15,2),
@Note nvarchar(MAX)
as
update [dbo].[Chekup_Type] set [TypeName] = @TypeName , [Price] = @Price , [Note] = @Note where Code = @Code

go

-- حذف البيانات
create proc [dbo].[SP_Delete_CheckType]
@Code nvarchar(8)
as
delete from Chekup_Type where Code = @Code

go


-- الحصول على اكبر رقم
create proc [dbo].[SP_GetMax_ChekupType]
as
select ISNULL(max(ID),0) from [dbo].[Chekup_Type]

go
