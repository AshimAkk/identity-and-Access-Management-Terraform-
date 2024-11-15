# Creating a strong password policy 

resource "aws_iam_account_password_policy" "password-policy" {
  minimum_password_length        = 10
  require_lowercase_characters   = true
  require_numbers                = true
  require_uppercase_characters   = true
  require_symbols                = true
  allow_users_to_change_password = false

}

# Creating Developers Group and Users for the Developers group

resource "aws_iam_group_membership" "Developers" {
  name = "tf-testing-group-membership"

  users = ["Bob1", "Grace1", "Jane1", "Josh1"]

  group = aws_iam_group.Developers.name
}

resource "aws_iam_group" "Developers" {
  name = "Developers"
  path = "/"

}

resource "aws_iam_user" "Bob1" {
  name = "Bob1"
  path = "/"
}
resource "aws_iam_user" "Grace1" {
  name = "Grace1"
  path = "/"
}


resource "aws_iam_user" "Jane1" {
  name = "Jane1"
  path = "/"
}

resource "aws_iam_user" "Josh1" {
  name = "Josh1"
  path = "/"
}
