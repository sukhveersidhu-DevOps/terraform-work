provider "aws" {
  region = "us-east-1"
}

variable "users" {
  default = {
    sukh : "India",
    Harp : "US",
    Harry : "Canada"
  }

}

resource "aws_iam_user" "my_iam_user" {
  #count = length(var.names)
  #name  = var.names[count.index]
  #for_each = toset(var.names)
  #name = each.value
  for_each = var.users
  name     = each.key
  tags = {
    Country = each.value
  }
}