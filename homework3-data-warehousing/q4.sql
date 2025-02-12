SELECT COUNT(*) AS zero_fare_trips
FROM `de_zoomcamp_2025.nyc_taxi.yellow_taxi_trips`
WHERE fare_amount = 0;