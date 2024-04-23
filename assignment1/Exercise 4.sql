create proc  GetDetails
as
begin
	with ProductionTableCTE as (
	select prod.product_id as product_id, prod.product_name as product_name,brand.brand_name as brand_name, cat.category_name as category_name
	from production.products prod
	left join production.brands brand on prod.brand_id= brand.brand_id
	left join production.categories cat on cat.category_id= prod.brand_id

)

SELECT
        product_id,
        product_name,
        brand_name,
        category_name
    FROM
        ProductionTableCTE;
END;

--EXEC ProductionTableCTE;
