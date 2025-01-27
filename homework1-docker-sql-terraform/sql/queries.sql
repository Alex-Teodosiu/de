-- Question 3: Trip Segmentation Count
SELECT
    SUM(CASE WHEN trip_distance <= 1 THEN 1 ELSE 0 END) AS "Up to 1 mile",
    SUM(CASE WHEN trip_distance > 1 AND trip_distance <= 3 THEN 1 ELSE 0 END) AS "1 to 3 miles",
    SUM(CASE WHEN trip_distance > 3 AND trip_distance <= 7 THEN 1 ELSE 0 END) AS "3 to 7 miles",
    SUM(CASE WHEN trip_distance > 7 AND trip_distance <= 10 THEN 1 ELSE 0 END) AS "7 to 10 miles",
    SUM(CASE WHEN trip_distance > 10 THEN 1 ELSE 0 END) AS "Over 10 miles"
FROM green_taxi_trips
WHERE lpep_pickup_datetime BETWEEN '2019-10-01' AND '2019-11-01';

-- Question 4: Longest Trip
SELECT
    lpep_pickup_datetime::date AS pickup_date,
    MAX(trip_distance) AS longest_trip
FROM green_taxi_trips
GROUP BY pickup_date
ORDER BY longest_trip DESC
LIMIT 1;

-- Question 5: Three Biggest Pickup Zones
SELECT
    zones.Zone AS pickup_zone,
    SUM(trips.total_amount) AS total_revenue
FROM green_taxi_trips AS trips
JOIN taxi_zones AS zones
    ON trips.PULocationID = zones.LocationID
WHERE trips.lpep_pickup_datetime::date = '2019-10-18'
GROUP BY pickup_zone
HAVING SUM(trips.total_amount) > 13000
ORDER BY total_revenue DESC;

-- Question 6: Largest Tip
SELECT
    dropoff_zones.Zone AS dropoff_zone,
    MAX(trips.tip_amount) AS largest_tip
FROM green_taxi_trips AS trips
JOIN taxi_zones AS pickup_zones
    ON trips.PULocationID = pickup_zones.LocationID
JOIN taxi_zones AS dropoff_zones
    ON trips.DOLocationID = dropoff_zones.LocationID
WHERE pickup_zones.Zone = 'East Harlem North'
GROUP BY dropoff_zone
ORDER BY largest_tip DESC
LIMIT 1;