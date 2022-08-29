
module "aws_iam_users" {
  source         = "../../users"
  group     = var.group_name
  usernames = ["Raghu", "Rahul", "Atul"]
}


module "my-bucket-module" {
  source      = "../../s3"
  bucket_name = var.bucket_name
}


