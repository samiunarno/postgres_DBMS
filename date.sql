SELECT now();

CREATE TABLE timez(tz TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT INTO timez VALUES('2024-01-12 10:45:00', '2024-01-12 10:30:00');

SELECT * FROM timez;