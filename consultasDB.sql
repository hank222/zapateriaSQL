SELECT nameCl name,city,idT,namePro,SUM(operation.cantidad)  cantidad,price,(SUM(operation.cantidad)*price) importe FROM operation INNER JOIN transaction ON operation.transaction = transaction.idT INNER JOIN products ON products.idP=operation.product  INNER JOIN client ON client.idC=transaction.client WHERE transaction.client=4 AND sell=1 GROUP BY product;
SELECT SUM(operation.cantidad*price) importe_total FROM operation INNER JOIN transaction ON operation.transaction = transaction.idT INNER JOIN products ON products.idP=operation.product   WHERE transaction.client=4;

SELECT namePro Producto,SUM(operation.cantidad) cantidad,price,(SUM(operation.cantidad)*price) importe FROM operation INNER JOIN transaction ON operation.transaction = transaction.idT INNER JOIN products ON products.idP=operation.product  WHERE operation.product=6 AND sell=1;

SELECT nameCl name,city,idT,namePro,price,(operation.cantidad*price) importe FROM operation INNER JOIN transaction ON operation.transaction = transaction.idT INNER JOIN products ON products.idP=operation.product  INNER JOIN client ON client.idC=transaction.client WHERE  transaction.sell=1 AND dateT BETWEEN CAST('2012-05-02' AS DATE) AND CAST( '2012-06-12' AS DATE);
SELECT nameCl name,city,SUM(operation.cantidad*price) importe_total FROM operation INNER JOIN transaction ON operation.transaction = transaction.idT INNER JOIN products ON products.idP=operation.product  INNER JOIN client ON client.idC=transaction.client WHERE  transaction.sell=1 AND dateT BETWEEN CAST('2012-05-02' AS DATE) AND CAST( '2012-06-12' AS DATE) GROUP BY idC;

SELECT DISTINCT client,nameCl FROM transaction INNER JOIN client ON client.idC=client  WHERE transaction.sell=1;

