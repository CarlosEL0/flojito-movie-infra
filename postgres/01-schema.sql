-- Eliminar tabla si existe para evitar errores en reinicios
DROP TABLE IF EXISTS movie_reviews;

-- Creación de la tabla principal
CREATE TABLE movie_reviews (
    id SERIAL PRIMARY KEY,
    movie_id INT NOT NULL, -- El ID de la película que nos dará TMDB
    user_name VARCHAR(100) NOT NULL,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);