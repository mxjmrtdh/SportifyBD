DELIMITER //

CREATE PROCEDURE court_booking.UpdateSportAndCourtState(IN SportId INT)
BEGIN
    DECLARE ResultMessage VARCHAR(255);

    START TRANSACTION;

    IF NOT EXISTS (
        SELECT 1
        FROM court_booking.sport s
        INNER JOIN court_booking.court c ON c.id_sport = s.id_sport
        INNER JOIN court_booking.booking b ON c.id_court = b.id_court
        WHERE s.ID_SPORT = SportId
    ) THEN
        UPDATE court_booking.sport
        SET id_status = 6
        WHERE ID_SPORT = SportId;

        UPDATE court_booking.court
        SET id_status = 2
        WHERE id_sport = SportId;

        COMMIT;
        SET ResultMessage = 'Deporte eliminado correctamente.';
    ELSE
        ROLLBACK;
        SET ResultMessage = 'No se puede eliminar deporte. El deporte tiene reservas.';
    END IF;

    SELECT ResultMessage AS Message;
END //


DELIMITER ;