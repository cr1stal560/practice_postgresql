SELECT
    column_name,
    data_type,
    is_nullable,
    column_default
FROM information_schema.columns
WHERE table_schema = 'culture_data'
  AND table_name   = 'culture_palaces_clubs'
ORDER BY ordinal_position;

-- Смотрим список ограничений таблицы (PK, UNIQUE, NOT NULL).
SELECT
    conname    AS constraint_name,
    contype    AS constraint_type
FROM pg_constraint
WHERE conrelid = 'culture_data.culture_palaces_clubs'::regclass;