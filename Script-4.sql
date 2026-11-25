-- 3) UNIQUE для колонки "data.general.id"
ALTER TABLE culture_data.culture_palaces_clubs
ADD CONSTRAINT culture_palaces_clubs_id_unique
UNIQUE ("data.general.id");