resource "mongodbatlas_project" "pjt" {
  name   = var.project_name
  org_id = var.org_id
#  project_owner_id = var.project_owner_id


  is_collect_database_specifics_statistics_enabled = false
  is_data_explorer_enabled                         = false
  is_performance_advisor_enabled                   = false
  is_realtime_performance_panel_enabled            = false
  is_schema_advisor_enabled                        = false
}
