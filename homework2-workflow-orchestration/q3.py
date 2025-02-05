import pandas as pd

total_rows = 0

for month in range(1, 13):
    month_str = str(month).zfill(2)  
    file_url = f"https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2020-{month_str}.csv.gz"
    
    df = pd.read_csv(file_url, compression="gzip")
    total_rows += len(df)

print(f"Total rows in Yellow Taxi data (2020): {total_rows}")
