provider "aws" {
  region = "us-east-1"
}

variable "iam_user_name_prefix" {
    default = "test-user-IAM"
}


resource "aws_iam_user" "my_iam_user" {
  name  = "${var.iam_user_name_prefix}_${count.index}"
  count = 1

  tags = {
    tag-key = "First-IAM-User"
  }
}