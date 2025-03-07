DELIMITER //

CREATE PROCEDURE court_booking.GetCourts(
    IN page INT,
    IN size INT
)
BEGIN
    DECLARE offset_value INT;
    SET offset_value = page * size;

    -- Primero obtenemos los IDs de las canchas paginadas
    WITH PagedCourts AS (
        SELECT c.id_court
        FROM court_booking.court c
        WHERE c.id_status = 1
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
        ri.image_url,
        rf.feature,
        rf.image_url
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
