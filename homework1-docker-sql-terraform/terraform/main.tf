provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "de_zoomcamp_bucket" {
  name          = "${var.project_id}-data-lake"
  location      = var.region
  storage_class = "STANDARD"
}

resource "google_bigquery_dataset" "de_zoomcamp_dataset" {
  dataset_id = "ny_taxi_data"
  location   = var.region
}
