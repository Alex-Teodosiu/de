CREATE OR REPLACE EXTERNAL TABLE `de_zoomcamp_2025.nyc_taxi.yellow_taxi_external`
OPTIONS (
  format = 'PARQUET',
  uris = ['gs://de_zoomcamp_nyc_taxi_2025/raw/yellow/yellow_tripdata_2024-*.parquet']
);