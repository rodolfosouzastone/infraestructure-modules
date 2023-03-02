terraform {
  # Deploy version v0.0.3 in stage
  source = "git::git@github.com:rodolfosouzastone/mongoatlas.git//modules//mongo-atlas/projects"
}

 generate "provider" {
   path = "providers.tf"
   if_exists = "overwrite_terragrunt"
   contents = <<EOF
provider "mongodbatlas" {
  # Configuration options
  public_key = "cmwbdwyq"
  private_key  = "e1dcf76d-8493-494c-8bc6-d42ff0cb9c86"
}
 EOF
}

remote_state {
  backend = "azurerm"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    storage_account_name  = "rodnetmongopjstates"
    container_name       = "mongoatlasprojectsstates"

    key = "${path_relative_to_include()}/terraform.tfstate"
    access_key = "USDSgmFMk8r4wYbsT1cwncxjDF0UcgfmWH6DFqVL50kuwpqs4WAq1ECvFVeLCZikhvmyaXcCo5Q1+AStDT6xgA=="
  }
}

