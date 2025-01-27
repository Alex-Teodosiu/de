output "bucket_name" {
  description = "Name of the created GCS bucket"
  value       = google_storage_bucket.de_zoomcamp_bucket.name
}

output "dataset_id" {
  description = "ID of the created BigQuery dataset"
  value       = google_bigquery_dataset.de_zoomcamp_dataset.dataset_id
}
