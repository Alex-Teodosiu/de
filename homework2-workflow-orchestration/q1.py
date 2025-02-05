import os
import requests

url = "https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2020-12.csv.gz"
file_name = "yellow_tripdata_2020-12.csv.gz"
uncompressed_file = "yellow_tripdata_2020-12.csv"

response = requests.get(url)
with open(file_name, "wb") as file:
    file.write(response.content)

import gzip
import shutil

with gzip.open(file_name, "rb") as f_in:
    with open(uncompressed_file, "wb") as f_out:
        shutil.copyfileobj(f_in, f_out)

file_size = os.path.getsize(uncompressed_file) / (1024 * 1024) 
print(f"Uncompressed file size: {file_size:.1f} MB")
