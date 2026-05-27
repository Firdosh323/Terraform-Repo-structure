module "state_bucket" {
  source      = "../modules/gcs"
  project_id  = var.project_id
  bucket_name = "gcp-terraform-state"
  location    = "US"
}
