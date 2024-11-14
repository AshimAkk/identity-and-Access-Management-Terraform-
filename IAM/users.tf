# Creating a strong password policy 

resource "aws_iam_account_password_policy" "password-policy" {
  minimum_password_length        = 10
  require_lowercase_characters   = true
  require_numbers                = true
  require_uppercase_characters   = true
  require_symbols                = true
  allow_users_to_change_password = false
}



# Creating the Groups for the different users


resource "aws_iam_group" "Developers" {
  name = "Developers"
  path = "/"
}

resource "aws_iam_group" "Operations" {
  name = "Operations"
  path = "/"
}


resource "aws_iam_group" "Finance Manager" {
  name = "Finance Manager"
  path = "/"
}


resource "aws_iam_group" "Data Analyts" {
  name = "Data Analyts"
  path = "/"
}















