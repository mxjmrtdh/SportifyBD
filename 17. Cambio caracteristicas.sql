ALTER TABLE court_booking.product_feature DROP FOREIGN KEY product_feature_ibfk_1;
ALTER TABLE court_booking.Feature MODIFY COLUMN id_feature INT AUTO_INCREMENT;
ALTER TABLE court_booking.product_feature
ADD CONSTRAINT product_feature_ibfk_1
FOREIGN KEY (id_feature) REFERENCES Feature(id_feature);
