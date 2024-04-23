DECLARE @ProductId INT
DECLARE @ProductName NVARCHAR(255)


DECLARE @BrandName NVARCHAR(255)
DECLARE @CategoryName NVARCHAR(255)

DECLARE product_cursor CURSOR FOR
SELECT prod.product_id, prod.product_name, brand.brand_name, cat.category_name
FROM production.products prod
LEFT JOIN production.brands brand ON brand.brand_id = prod.brand_id
LEFT JOIN production.categories cat ON cat.category_id = prod.category_id

OPEN product_cursor
FETCH NEXT FROM product_cursor INTO @ProductId, @ProductName, @BrandName, @CategoryName


WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CAST(@ProductId AS NVARCHAR(10)) + ' | ' + @ProductName + ' | ' + ISNULL(@BrandName, '') + ' | ' + ISNULL(@CategoryName, '')
    FETCH NEXT FROM product_cursor INTO @ProductId, @ProductName, @BrandName, @CategoryName
END

CLOSE product_cursor
DEALLOCATE product_cursor

