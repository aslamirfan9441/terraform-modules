output "iam_users" {
  value = {
    single_user    = aws_iam_user.cloud.name
    counted_users  = aws_iam_user.cloud_count[*].name
    foreach_users  = [for u in aws_iam_user.cloud_forset_user : u.name]
  }
}
