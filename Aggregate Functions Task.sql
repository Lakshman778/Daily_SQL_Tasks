CREATE DATABASE AggregatorDB;

USE AggregatorDB;

CREATE TABLE DataValues (
    id INT AUTO_INCREMENT PRIMARY KEY,
    group_name VARCHAR(50),
    value DOUBLE
);

INSERT INTO DataValues (group_name, value) VALUES
('A', 10),
('A', 20),
('A', 20),
('A', 30),
('A', 40),
('B', 50),
('B', 60),
('B', 70),
('B', 80),
('B', 90);

SELECT * FROM DataValues;

SELECT SUM(value) AS Total
FROM DataValues;

SELECT AVG(value) AS Average
FROM DataValues;

SELECT MIN(value) AS Minimum
FROM DataValues;

SELECT MAX(value) AS Maximum
FROM DataValues;

SELECT AVG(value) AS Median
FROM (
    SELECT value,
           ROW_NUMBER() OVER (ORDER BY value) AS rn,
           COUNT(*) OVER () AS total
    FROM DataValues
) AS temp
WHERE rn IN (
    FLOOR((total + 1) / 2),
    FLOOR((total + 2) / 2)
);

SELECT value, COUNT(*) AS frequency
FROM DataValues
GROUP BY value
HAVING COUNT(*) = (
    SELECT MAX(freq)
    FROM (
        SELECT COUNT(*) AS freq
        FROM DataValues
        GROUP BY value
    ) AS temp
)
AND COUNT(*) > 1;

SELECT STDDEV_POP(value) AS Standard_Deviation
FROM DataValues;

SET @p = 75;

SET @p = 75;

WITH RankedValues AS (
    SELECT
        value,
        ROW_NUMBER() OVER (ORDER BY value) AS rn,
        COUNT(*) OVER () AS total
    FROM DataValues
),
PositionValue AS (
    SELECT
        (@p / 100) * (MAX(total) - 1) + 1 AS pos
    FROM RankedValues
)
SELECT
    MIN(CASE WHEN r.rn = FLOOR(p.pos) THEN r.value END)
    +
    (
        MAX(p.pos) - FLOOR(MAX(p.pos))
    )
    *
    (
        MIN(CASE WHEN r.rn = CEIL(p.pos) THEN r.value END)
        -
        MIN(CASE WHEN r.rn = FLOOR(p.pos) THEN r.value END)
    ) AS Percentile
FROM RankedValues r
CROSS JOIN PositionValue p;

SELECT
    group_name,
    SUM(value) AS Total,
    AVG(value) AS Average,
    MIN(value) AS Minimum,
    MAX(value) AS Maximum,
    STDDEV_POP(value) AS Standard_Deviation
FROM DataValues
GROUP BY group_name;

SELECT group_name, AVG(value) AS Median
FROM (
    SELECT group_name,
           value,
           ROW_NUMBER() OVER (
               PARTITION BY group_name ORDER BY value
           ) AS rn,
           COUNT(*) OVER (
               PARTITION BY group_name
           ) AS total
    FROM DataValues
) AS temp
WHERE rn IN (
    FLOOR((total + 1) / 2),
    FLOOR((total + 2) / 2)
)
GROUP BY group_name;