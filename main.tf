provider "aws" {
  region = "us-east-1"
}

# Single IAM user
resource "aws_iam_user" "cloud" {
  name = "cloud-user"
}

# Multiple IAM users with count
variable "cloud_count" {
  default = 2
}

resource "aws_iam_user" "cloud_count" {
  count = var.cloud_count
  name  = "cloud-user-${count.index + 1}"
}

# Multiple IAM users with for_each
variable "users_map" {
  default = {
    user1 = "cloud-forset-user1"
    user2 = "cloud-forset-user2"
  }
}

resource "aws_iam_user" "cloud_forset_user" {
  for_each = var.users_map
  name     = each.value
}
