CREATE OR REPLACE TABLE `de_zoomcamp_2025.nyc_taxi.yellow_taxi_optimized`
PARTITION BY DATE(tpep_dropoff_datetime)
CLUSTER BY VendorID AS
SELECT * FROM `de_zoomcamp_2025.nyc_taxi.yellow_taxi_trips`;