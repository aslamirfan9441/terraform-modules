# Single IAM user
resource "aws_iam_user" "cloud" {
  name = "cloud-user"
}

# Multiple IAM users using count
resource "aws_iam_user" "cloud_count" {
  count = 2
  name  = "cloud-user-${count.index}"
}

# Multiple IAM users using for_each
resource "aws_iam_user" "cloud_forset_user" {
  for_each = toset(["alice", "bob", "charlie"])
  name     = each.key
}
