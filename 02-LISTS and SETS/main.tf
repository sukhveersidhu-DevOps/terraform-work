provider "aws" {
  region = "us-east-1"
}

variable "names" {
  default = ["sats", "sukh"]
  
}

resource "aws_iam_user" "my_iam_user" {
  #count = length(var.names)
  #name  = var.names[count.index]
  for_each = toset(var.names)
  name = each.value
}