SELECT
    COUNT(*) FILTER (WHERE "data.general.name" IS NULL) AS empty_names,
    COUNT(*) FILTER (WHERE "data.general.address.fullAddress" IS NULL) AS empty_addresses,
    COUNT(*) FILTER (WHERE "data.general.organization.inn" IS NULL) AS empty_inn
FROM culture_data.culture_palaces_clubs;

