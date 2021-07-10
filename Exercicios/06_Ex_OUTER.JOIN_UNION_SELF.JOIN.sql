-- EXERCÍCIO 24:

SELECT BusinessEntityID, CreditCardID
FROM Sales.PersonCreditCard
WHERE ModifiedDate BETWEEN '2014-01-01 00:00:00.000' AND '2014-31-12 00:00:00.000'
UNION
SELECT BusinessEntityID, CreditCardID
FROM Sales.PersonCreditCard
WHERE ModifiedDate BETWEEN '2012-01-01 00:00:00.000' AND '2012-31-12 00:00:00.000'

-- EXERCÍCIO 25:
-- Saber, na tabela Detalhe do Pedido, quais produtos têm o mesmo percentual de desconto.

SELECT A.ProductID, A.Discount, B.ProductID, B.Discount
FROM [Order Details] A, [Order Details] B
WHERE A.Discount = B.Discount