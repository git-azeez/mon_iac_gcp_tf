resource "google_monitoring_notification_channel" "webhook" {
  display_name = "searce-cms-integration-webhook"
  project     = "${var.project}"
  enabled      = true
  type        = "webhook_tokenauth"
  labels = {
    "url" = var.notification_channel_url
  }
  user_labels = {}

  timeouts {}
}


