
project = "sonak-prod"
policy_labels = {
  project_id = "sonak-prod",
  customer   = "sonak" # only lowercase letters, numerals, underscores, and dashes
}
notification_channel_url = "https://cms-ops.searce.com/incident?key=AIzaSyBYvHDnYHe0OexkJ-DToiBway4V_DeIfsc&monitoring_tool=stackdriver"
# vm_filter = "metadata.user_labels.\"searce-monitoring\"!=\"disabled\""
# cloudsql_filter = "metadata.user_labels.\"searce-monitoring\"!=\"disabled\""


