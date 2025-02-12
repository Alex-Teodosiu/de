-- External Table
SELECT COUNT(DISTINCT PULocationID) AS distinct_pickup_locations
FROM `de_zoomcamp_2025.nyc_taxi.yellow_taxi_external`;

-- Regular Table
SELECT COUNT(DISTINCT PULocationID) AS distinct_pickup_locations
FROM `de_zoomcamp_2025.nyc_taxi.yellow_taxi_trips`;