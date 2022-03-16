
variable "project" {

}

variable "policy_labels" {

}

variable "notification_channel_url" {

}

# vm policies
variable "vm_filter" {
  default = ""
}
variable "vm_cpu_alert_policy_parameters" {
  default = {
    auto_close_interval         = "604800s",
    threshold_duration_trouble  = "300s",
    threshold_value_trouble     = 0.8,
    threshold_duration_critical = "300s",
    threshold_value_critical    = 0.9,
    documentation               = "searce monitoring",
  }
}
variable "vm_mem_alert_policy_parameters" {
  default = {
    auto_close_interval         = "604800s",
    threshold_duration_trouble  = "300s",
    threshold_value_trouble     = 80,
    threshold_duration_critical = "300s",
    threshold_value_critical    = 90,
    documentation               = "searce monitoring",
  }
}
variable "vm_disk_alert_policy_parameters" {
  default = {
    auto_close_interval         = "604800s",
    threshold_duration_trouble  = "300s",
    threshold_value_trouble     = 80,
    threshold_duration_critical = "300s",
    threshold_value_critical    = 90,
    filter                      = "metric.label.\"device\"!=monitoring.regex.full_match(\"/dev/loop.*\") metric.label.\"device\"!=monitoring.regex.full_match(\"loop.*\")"
    documentation               = "searce monitoring",
  }
}

# cloudsql policies
variable "cloudsql_filter" {
  default = ""
}
variable "cloudsql_cpu_alert_policy_parameters" {
  default = {
    auto_close_interval         = "604800s",
    threshold_duration_trouble  = "300s",
    threshold_value_trouble     = 0.8,
    threshold_duration_critical = "300s",
    threshold_value_critical    = 0.9,
    documentation               = "searce monitoring",
  }
}
variable "cloudsql_mem_alert_policy_parameters" {
  default = {
    auto_close_interval         = "604800s",
    threshold_duration_trouble  = "300s",
    threshold_value_trouble     = 0.8,
    threshold_duration_critical = "300s",
    threshold_value_critical    = 0.9,
    documentation               = "searce monitoring",
  }
}
variable "cloudsql_disk_alert_policy_parameters" {
  default = {
    auto_close_interval         = "604800s",
    threshold_duration_trouble  = "300s",
    threshold_value_trouble     = 0.8,
    threshold_duration_critical = "300s",
    threshold_value_critical    = 0.9,
    filter                      = "metric.label.\"device\"!=monitoring.regex.full_match(\"/dev/loop.*\") metric.label.\"device\"!=monitoring.regex.full_match(\"loop.*\")"
    documentation               = "searce monitoring",
  }
}

