terraform {
  # Deploy version v0.0.3 in stage
  source = "git::git@github.com:rodolfosouzastone/mongoatlas.git//mongo-atlas//projects"
}

# Indicate what region to deploy the resources into
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

inputs = {
  org_id = "639b1a7b62ddee061d2b39d5"
#  project_owner_id  = "rodolfo.souza@stone.com.br"
  project_name = "teste-rodnet"
  api_key_name = "mynew-apikey"
}


