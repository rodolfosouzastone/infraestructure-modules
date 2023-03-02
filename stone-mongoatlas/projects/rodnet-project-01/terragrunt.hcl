terraform {
  # Deploy version v0.0.3 in stage
  source = "git::git@github.com:rodolfosouzastone/mongoatlas.git//modules//mongo-atlas/projects"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  name = "RODNETPJ"
  org_id = "639b1a7b62ddee061d2b39d5"
#  organization_id = "639b1a7b62ddee061d2b39d5"
#  project_name = "rodnet-project-01"
}


