-- Demo PostgreSQL Database initialisation

DROP TABLE IF EXISTS testtable CASCADE;
CREATE TABLE testtable(id INT, name VARCHAR(20), value INT);
INSERT INTO testtable VALUES(1,'This',12);
INSERT INTO testtable VALUES(2,'That',345);
