output "iam_users" {
  description = "IAM users created"
  value = [
    aws_iam_user.cloud.name,
    aws_iam_user.cloud-count[*].name,
    values(aws_iam_user.cloud-forset-user)[*].name
  ]
}
