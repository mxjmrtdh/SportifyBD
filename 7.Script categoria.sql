DROP PROCEDURE IF EXISTS searchByCategory;

DELIMITER $$

CREATE PROCEDURE searchByCategory(IN p_sport_id VARCHAR(255))
BEGIN
    SET @sql = CONCAT(
        'SELECT c.id_court, c.court_name, c.court_description, sp.sport_name, ',
        'c.capacity, c.price_per_hour, s.status, c.address, c.neighborhood, ci.city_name ',
        'FROM court c ',
        'INNER JOIN status s ON s.id_status = c.id_status ',
        'INNER JOIN city ci ON ci.id_city = c.id_city ',
        'INNER JOIN sport sp ON sp.id_sport = c.id_sport ',
        'WHERE c.id_status = 1 AND c.id_sport IN (', p_sport_id, ')'
    );

    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END$$

DELIMITER ;