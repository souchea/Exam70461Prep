-- CROSS JOIN EXAMPLE

-- How Many Colors Do We Offer?
SELECT Distinct Color FROM SalesLT.Product
WHERE Color IS NOT NULL



-- How Many Products Do We Offer
SELECT Distinct Name FROM SalesLT.ProductModel



-- How Many Product Choices Would We Offer If Each Product Was Available In All Colors?
SELECT Distinct p.Color, pm.Name
FROM SalesLT.Product p CROSS JOIN SalesLT.ProductModel pm
WHERE Color IS NOT NULL