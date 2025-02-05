file_url = "https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-03.csv.gz"
df = pd.read_csv(file_url, compression="gzip")

print(f"Total rows in Yellow Taxi data (March 2021): {len(df)}")