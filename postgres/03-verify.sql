DO $$ 
DECLARE
    review_record RECORD;
    total_reviews INT;
BEGIN
    -- Contar registros
    SELECT COUNT(*) INTO total_reviews FROM movie_reviews;
    RAISE NOTICE '========================================';
    RAISE NOTICE 'Verificación de Base de Datos SOA';
    RAISE NOTICE 'Total de reseñas insertadas: %', total_reviews;
    RAISE NOTICE '========================================';

    -- Iterar sobre las reseñas para confirmar su contenido
    FOR review_record IN SELECT * FROM movie_reviews LOOP
        RAISE NOTICE 'Película ID: % | Usuario: % | Rating: %', 
                     review_record.movie_id, 
                     review_record.user_name, 
                     review_record.rating;
    END LOOP;
END $$;