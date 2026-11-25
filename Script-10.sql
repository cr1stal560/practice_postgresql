
CREATE TABLE IF NOT EXISTS culture_data.m2m_culture_palaces_clubs_tags (
    id                      bigserial PRIMARY KEY,
    culture_palaces_club_id bigint NOT NULL,
    tag_id                  bigint NOT NULL,
    CONSTRAINT fk_m2m_club
        FOREIGN KEY (culture_palaces_club_id)
        REFERENCES culture_data.culture_palaces_clubs ("data.general.id")
        ON DELETE CASCADE,
    CONSTRAINT fk_m2m_tag
        FOREIGN KEY (tag_id)
        REFERENCES culture_data.tags (id)
        ON DELETE CASCADE,
    CONSTRAINT uq_club_tag UNIQUE (culture_palaces_club_id, tag_id)
);