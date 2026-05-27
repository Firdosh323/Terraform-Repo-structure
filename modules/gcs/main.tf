resource "google_storage_bucket" "main" {
  name     = var.bucket_name
  location = var.location
  project  = var.project_id

  force_destroy = false

  versioning {
    enabled = true
  }
}
