# main.tf
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket_test" {
  bucket = "mon-bucket-test-pfe"
  acl    = "private"
}

resource "aws_iam_role" "role_test" {
  name = "role-test-pfe"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}
