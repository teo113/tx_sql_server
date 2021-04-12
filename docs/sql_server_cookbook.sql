--populate a geometry column from X and Y coordinate columns
UPDATE schema.table
SET geom = geometry::POINT(xco, yco, 27700);

--display a geometry column as text
SELECT geom.STAsText() as geom
FROM schema.table;