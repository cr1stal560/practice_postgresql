-- Удаляем все учреждения, кроме учреждений
-- Вологодской области
DELETE FROM culture_data.culture_palaces_clubs
WHERE "data.general.address.fullAddress"
      NOT ILIKE '%Вологодская%';