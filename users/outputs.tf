output "print_usernames_list" {
  value = aws_iam_user.demo_users.*.name
}