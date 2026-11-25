-- 1) NOT NULL для названия учреждения
ALTER TABLE culture_data.culture_palaces_clubs
ALTER COLUMN "data.general.name" SET NOT NULL;

-- 2) NOT NULL для полного адреса
ALTER TABLE culture_data.culture_palaces_clubs
ALTER COLUMN "data.general.address.fullAddress" SET NOT NULL;
