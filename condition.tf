provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAY7345KKAGVNB7ATU"
  secret_key = "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"
}

variable "istest" {}

resource "aws_instance" "dev" {
   ami = "ami-006dcf34c09e50022"
   instance_type = "t2.micro"
   count = var.istest == true ? 1 : 0
}

resource "aws_instance" "prod" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.large"
   count = var.istest == false ? 1 : 0
}