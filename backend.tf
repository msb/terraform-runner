# this configures TF to store project state in '/terraform'
terraform {
  backend "local" {
    path = "/terraform/terraform.tfstate"
    workspace_dir = "/terraform"
  }
}
