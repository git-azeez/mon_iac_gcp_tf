terraform {
  backend "gcs" {
    bucket = "searce-cms-production-monitoring-alerts-iac-state"
    prefix = "project_id"
  }
}
