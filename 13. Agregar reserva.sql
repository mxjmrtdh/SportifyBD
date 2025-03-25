
INSERT INTO court_booking.booking (
    id_user, 
    id_court, 
    registration_date, 
    booking_date, 
    booking_start_time, 
    booking_closing_time, 
    capacity, 
    id_status
) VALUES (1,1, NOW(),'2025-03-22','14:00:00','15:00:00', 4,13),
(1,1, NOW(),'2025-03-22','8:00:00','11:00:00', 4,13),
(1,2, NOW(),'2025-03-23','8:00:00','12:00:00', 4,13),
(1,2, NOW(),'2025-03-23','15:00:00','18:00:00', 4,13);

