provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAY7345KKAGVNB7ATU"
  secret_key = "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"
}
resource "aws_instance" "server1" {
  ami           = "ami-006dcf34c09e50022"
  instance_type = "t2.micro"
  count = 3
  }