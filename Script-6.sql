-- Расширение PostGIS и геометрическая колонка.
CREATE EXTENSION IF NOT EXISTS postgis;

-- Добавляем колонку geom типа Point (SRID 4326)
ALTER TABLE culture_data.culture_palaces_clubs
ADD COLUMN IF NOT EXISTS geom geometry(Point, 4326);