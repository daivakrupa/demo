terraform {
  backend "s3" {
    bucket               = "tf-dv9-state"
    key                  = "terraform.tfstate"
    region               = "us-east-1"
    encrypt              = true
    #dynamodb_table       = "terraform-state-lock"
    use_lockfile         = true
    workspace_key_prefix = "workspaces"
  }
}