provider "aws" {
region = "${var.region}"
}

resource "aws_s3_bucket" "test-bucket" {
    bucket = "${var.bucket-name}"
  
    tags = {
      "name" = "${var.tag-name}"
       "Environment" = "${var.env}"
    }

}