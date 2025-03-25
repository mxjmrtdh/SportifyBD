DELIMITER //

CREATE PROCEDURE court_booking.GetCourtsByFilters(
    IN page INT,
    IN size INT,
    IN p_categorias VARCHAR(255),
    IN p_ciudades VARCHAR(255),
    IN p_fecha DATE,
    IN p_hora TIME
)
BEGIN
    DECLARE offset_value INT;
    SET offset_value = page * size;

    -- Obtener el total de canchas sin paginación
    SELECT COUNT(DISTINCT c.id_court) INTO @total_records
    FROM court_booking.court c
    WHERE c.id_status = 1
    AND (COALESCE(p_categorias, '') = '' OR FIND_IN_SET(c.id_sport, p_categorias) > 0)
    AND (COALESCE(p_ciudades, '') = '' OR FIND_IN_SET(c.id_city, p_ciudades) > 0)
    AND NOT EXISTS (
        SELECT 1 FROM court_booking.booking 
        WHERE id_court = c.id_court 
        AND booking_date = p_fecha
        AND (
				(p_hora IS NULL AND booking_start_time = '00:00:00' AND booking_closing_time = '23:59:59') OR
				(p_hora IS NOT NULL AND (p_hora >= booking_start_time AND p_hora < booking_closing_time OR
				p_hora < booking_start_time AND ADDTIME(p_hora, '01:00:00') > booking_start_time))
			)
    );

    -- Obtener la lista de canchas paginada junto con total de registros
    WITH PagedCourts AS (
    SELECT c.id_court
    FROM court_booking.court c
    WHERE c.id_status = 1
    AND (COALESCE(p_categorias, '') = '' OR FIND_IN_SET(c.id_sport, p_categorias) > 0)
    AND (COALESCE(p_ciudades, '') = '' OR FIND_IN_SET(c.id_city, p_ciudades) > 0)
    AND NOT EXISTS (
        SELECT 1 FROM court_booking.booking 
        WHERE id_court = c.id_court 
        AND booking_date = p_fecha
        AND (
            (p_hora IS NULL AND booking_start_time = '00:00:00' AND booking_closing_time = '23:59:59') OR
            (p_hora IS NOT NULL AND (p_hora >= booking_start_time AND p_hora < booking_closing_time OR
            p_hora < booking_start_time AND ADDTIME(p_hora, '01:00:00') > booking_start_time))
			)
			)
			ORDER BY c.id_court
			LIMIT size OFFSET offset_value
		),
    RankedImages AS (
        SELECT 
            cim.id_court,
            cim.image_url,
            ROW_NUMBER() OVER (PARTITION BY cim.id_court ORDER BY cim.image_url ASC) AS rn
        FROM court_booking.court_images cim
        WHERE cim.id_court IN (SELECT id_court FROM PagedCourts)
    ), 
    RankedFeatures AS (
        SELECT 
            pf.id_court,
            f.feature,
            f.image_url,
            ROW_NUMBER() OVER (PARTITION BY pf.id_court ORDER BY f.image_url ASC) AS rn
        FROM court_booking.product_feature pf
        INNER JOIN court_booking.feature f ON f.id_feature = pf.id_feature
        WHERE f.id_status = 24 AND pf.id_court IN (SELECT id_court FROM PagedCourts)
    )
    SELECT 
        c.id_court,
        c.court_name,
        s.sport_name,
        cit.city_name,
        st.status,
        c.court_description,
        c.capacity,
        c.price_per_hour,
        c.address,
        c.neighborhood,
        ri.image_url AS court_image,
        rf.feature AS court_feature,
        rf.image_url AS feature_image,
        @total_records AS total_elements
    FROM PagedCourts pc
    INNER JOIN court_booking.court c ON c.id_court = pc.id_court
    INNER JOIN court_booking.sport s ON s.id_sport = c.id_sport
    INNER JOIN court_booking.city cit ON cit.id_city = c.id_city
    INNER JOIN court_booking.status st ON st.id_status = c.id_status
    LEFT JOIN RankedImages ri ON ri.id_court = c.id_court
    LEFT JOIN RankedFeatures rf ON rf.id_court = c.id_court
    ORDER BY c.id_court, ri.rn, rf.rn;

END //

DELIMITER ;
