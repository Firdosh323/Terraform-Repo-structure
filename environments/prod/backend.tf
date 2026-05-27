terraform {
  backend "gcs" {
    bucket = "gcp-terraform-state"
    prefix = "environments/prod"
  }
}
