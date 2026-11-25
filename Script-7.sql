UPDATE culture_data.culture_palaces_clubs
SET geom = ST_GeomFromGeoJSON("data.general.address.mapPosition"::text)
WHERE "data.general.address.mapPosition" IS NOT NULL
  AND "data.general.address.mapPosition"::text <> ''
  AND "data.general.address.mapPosition"::text <> 'null';

-- Проверка успешности преобразования
SELECT COUNT(*) AS total,
 COUNT(geom) AS with_geom
FROM culture_data.culture_palaces_clubs;