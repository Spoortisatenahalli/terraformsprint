# To add users in a group
resource "aws_iam_group_membership" "demo_group_membership" {
  name = "tf-testing-group-membership"
  users = var.usernames
  group = aws_iam_group.demo_group.name
}


# To create a group
resource "aws_iam_group" "demo_group" {
  name = var.group
}


# To create a IAM user
resource "aws_iam_user" "demo_users" {
  count = length(var.usernames)
  name  = var.usernames[count.index]

  
}
