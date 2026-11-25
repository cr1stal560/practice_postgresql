INSERT INTO culture_data.tags (name)
SELECT DISTINCT tag_value
FROM culture_data.culture_palaces_clubs,
     LATERAL jsonb_array_elements_text("data.general.tags") AS tag_value
WHERE "data.general.tags" IS NOT NULL
  AND jsonb_typeof("data.general.tags") = 'array'
ON CONFLICT (name) DO NOTHING;

-- Проверка:
SELECT COUNT(*) FROM culture_data.tags;