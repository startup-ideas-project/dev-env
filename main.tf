provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_s3_bucket" "b" {
  bucket = "peer-review-chat-file-bucket"
  acl    = "private"

  tags = {
    Environment = "Dev"
  }
}

# resource "aws_db_instance" "default" {
#   allocated_storage    = 20
#   engine               = "postgresql"
#   engine_version       = "5.7"
#   instance_class       = "db.t2.micro"
#   name                 = "peer-chat-db-dev"
#   username             = "peerchat"
#   password             = "pe3rch4t@123"
#   skip_final_snapshot  = true
# }

