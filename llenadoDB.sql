USE zapateriaDB;
INSERT INTO products VALUES (1,"suela","pieza",12.0,20);
INSERT INTO products VALUES (2,"cordon","pieza",4.0,20);
INSERT INTO products VALUES (3,"puente","pieza",6.0,30);
INSERT INTO products VALUES (4,"pintura","pieza",6.0,90);
INSERT INTO products VALUES (5,"clavos","paquete",23.50,30);
INSERT INTO products VALUES (6,"zapato modelo 1","par",100.50,10);
INSERT INTO products VALUES (7,"zapato modelo 2","par",205.50,10);
INSERT INTO products VALUES (8,"calzador","pieza",15.50,25);
INSERT INTO products VALUES (9,"zapatilla real","par",215.50,5);
INSERT INTO products VALUES (10,"bota real","par",315.50,2);

INSERT INTO client VALUES (1,"henry martinez","Mexico");
INSERT INTO client VALUES (2,"Rene garcia","Chile");
INSERT INTO client VALUES (3,"Leslie garcia","Chile");
INSERT INTO client VALUES (4,"Leticia garza","Chile");
INSERT INTO client VALUES (5,"Pedro Perez","Argentina");
INSERT INTO client VALUES (6,"Perla Perez","Argentina");

INSERT INTO transaction VALUES (1,'2012-02-02',1,1);
INSERT INTO transaction VALUES (2,'2012-02-02',1,4);
INSERT INTO transaction VALUES (3,'2012-05-02',1,4);
INSERT INTO transaction VALUES (4,'2012-05-02',0,2);
INSERT INTO transaction VALUES (5,'2012-06-12',1,3);

INSERT INTO operation VALUES (1,1,1,2);
INSERT INTO operation VALUES (2,1,2,3);
INSERT INTO operation VALUES (3,1,3,1);
INSERT INTO operation VALUES (4,2,4,1);
INSERT INTO operation VALUES (5,2,6,1);
INSERT INTO operation VALUES (6,2,7,1);
INSERT INTO operation VALUES (7,3,9,1);
INSERT INTO operation VALUES (8,3,10,1);
INSERT INTO operation VALUES (9,5,6,5);
INSERT INTO operation VALUES (10,5,7,5);
INSERT INTO operation VALUES (11,5,9,5);
INSERT INTO operation VALUES (12,4,5,50);
INSERT INTO operation VALUES (13,3,7,2);

