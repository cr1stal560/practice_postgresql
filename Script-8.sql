CREATE TABLE IF NOT EXISTS culture_data.tags (
    id          bigserial PRIMARY KEY,      -- первичный ключ + счётчик
    name        text NOT NULL UNIQUE,       -- уникальное имя тега
    created_at  timestamp with time zone DEFAULT now(), -- дата добавления
    description text                        -- описание тега (опционально)
);


