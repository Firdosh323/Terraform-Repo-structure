terraform {
  backend "gcs" {
    bucket = "firdosh-terraform-state"
    prefix = "environments/dev"
  }
}
