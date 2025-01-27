CREATE TABLE green_taxi_trips (
    VendorID INTEGER,
    lpep_pickup_datetime TIMESTAMP,
    lpep_dropoff_datetime TIMESTAMP,
    store_and_fwd_flag TEXT,
    RatecodeID INTEGER,
    PULocationID INTEGER,
    DOLocationID INTEGER,
    passenger_count INTEGER,
    trip_distance FLOAT,
    fare_amount FLOAT,
    extra FLOAT,
    mta_tax FLOAT,
    tip_amount FLOAT,
    tolls_amount FLOAT,
    ehail_fee FLOAT,
    improvement_surcharge FLOAT,
    total_amount FLOAT,
    payment_type INTEGER,
    trip_type INTEGER,
    congestion_surcharge FLOAT
);

CREATE TABLE taxi_zones (
    LocationID INTEGER PRIMARY KEY,
    Borough TEXT,
    Zone TEXT,
    service_zone TEXT
);