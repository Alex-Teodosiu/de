-- Using non-partitioned table
SELECT DISTINCT VendorID
FROM `de_zoomcamp_2025.nyc_taxi.yellow_taxi_trips`
WHERE DATE(tpep_dropoff_datetime) BETWEEN '2024-03-01' AND '2024-03-15';

-- Using optimized (partitioned) table
SELECT DISTINCT VendorID
FROM `de_zoomcamp_2025.nyc_taxi.yellow_taxi_optimized`
WHERE DATE(tpep_dropoff_datetime) BETWEEN '2024-03-01' AND '2024-03-15';