terraform {
  backend "s3" {
    bucket = "terraformec2jenkins"
    key = "statefile"
    region = "us-east-1"
  }
}