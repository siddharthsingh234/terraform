provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAY7345KKAGVNB7ATU"
  secret_key = "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"
}

variable "elb_names" {
  type = list
  default = ["dev-loadbalancer", "stage-loadbalanacer","prod-loadbalancer"]
}

resource "aws_iam_user" "lb" {
  name = var.elb_names[count.index]
  count = 3
  path = "/system/"
}