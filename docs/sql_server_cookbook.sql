--1.00 Create a new table with a geometry column
CREATE TABLE schema.table (
id integer IDENTITY PRIMARY KEY,
xco integer,
yco integer,
geom geometry(POINT, 27700)
);

--1.01 Insert n rows into an table, populating an id column
INSERT INTO dbo.manyrows DEFAULT VALUES;
GO 1000 --slow method

--1.02 Update the contents of a column with random values from a range

--1.03 populate a geometry column from X and Y coordinate columns
UPDATE schema.table
SET geom = geometry::POINT(xco, yco, 27700);

--1.04 display a geometry column as text
SELECT geom.STAsText() as geom
FROM schema.table;