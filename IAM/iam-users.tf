
# Creating a strong password policy 

resource "aws_iam_account_password_policy" "password-policy" {
  minimum_password_length        = 10
  require_lowercase_characters   = true
  require_numbers                = true
  require_uppercase_characters   = true
  require_symbols                = true
  allow_users_to_change_password = false
}

# # creating IAM Users

# resource "aws_iam_user" "users" {
#   count = length(var.iam-users)
#   name = var.iam-users[count.index]
# }

# resource "aws_iam_user_policy" "bob-user-policy" {
#   name   = "bob-user-policy"
#   user   = aws_iam_user.Bob-iam-user.name
#   policy = data.aws_iam_policy_document.Developers.jsonencode
# }