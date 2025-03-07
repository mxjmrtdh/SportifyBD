DELIMITER //

CREATE PROCEDURE court_booking.GetCourtsbyId(IN p_id_court INT)
BEGIN
    WITH RankedImages AS (
        SELECT 
            cim.id_court,
            cim.image_url,
            ROW_NUMBER() OVER (PARTITION BY cim.id_court ORDER BY cim.image_url ASC) AS rn
        FROM court_booking.court_images cim
    ), 
    RankedFeatures AS (
        SELECT 
            pf.id_court,
            f.feature,
            f.image_url,
            ROW_NUMBER() OVER (PARTITION BY pf.id_court ORDER BY f.image_url ASC) AS rn
        FROM court_booking.product_feature pf
        INNER JOIN court_booking.feature f ON f.id_feature = pf.id_feature
        WHERE f.id_status = 24
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
        rf.image_url AS feature_image
    FROM court_booking.court c
    INNER JOIN court_booking.sport s ON s.id_sport = c.id_sport
    INNER JOIN court_booking.city cit on cit.id_city = c.id_city
    INNER JOIN court_booking.status st on st.id_status = c.id_status
    LEFT JOIN RankedImages ri ON ri.id_court = c.id_court 
    LEFT JOIN RankedFeatures rf ON rf.id_court = c.id_court 
    WHERE c.id_status = 1
    AND (p_id_court IS NULL OR c.id_court = p_id_court);
END //

DELIMITER ;
