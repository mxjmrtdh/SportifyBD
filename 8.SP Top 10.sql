DELIMITER $$

CREATE PROCEDURE court_booking.courtRand()
BEGIN
    SELECT 
		c.id_court,
		c.court_name,
		c.court_description,
		sp.sport_name,
		c.capacity,
		c.price_per_hour,
		s.status,
		c.address,
		c.neighborhood,
		ci.city_name,
		-- Subconsulta para obtener solo una imagen
		(SELECT cim.image_url 
		 FROM court_booking.court_images cim 
		 WHERE cim.id_court = c.id_court 
		 ORDER BY cim.image_url ASC 
		 LIMIT 1) AS image_url
	FROM court_booking.court c
	INNER JOIN court_booking.status s ON s.id_status = c.id_status
	INNER JOIN court_booking.city ci ON ci.id_city = c.id_city
	INNER JOIN court_booking.sport sp ON sp.id_sport = c.id_sport
	WHERE c.id_status = 1
	ORDER BY RAND()
	LIMIT 10;
END$$

DELIMITER ;