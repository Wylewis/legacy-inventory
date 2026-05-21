terraform {
  backend "s3" {
    bucket = "terraform-state-wylewis"
    key    = "legacy-inventory/terraform.tfstate"
    region = "us-east-1"
  }
}
