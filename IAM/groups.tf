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
  name = "Developers"

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




# Creating Operations Group and Users for the Operations group

resource "aws_iam_group_membership" "operations" {
  name = "operations"

  users = ["Luke1", "Nate1"]

  group = aws_iam_group.operations.name
}

resource "aws_iam_group" "operations" {
  name = "operations"
  path = "/"

}

resource "aws_iam_user" "Luke1" {
  name = "Luke1"
  path = "/"
}
resource "aws_iam_user" "Nate1" {
  name = "Nate1"
  path = "/"
}

# Creating Finance-Manager Group and Users for the Finance-Manager group

resource "aws_iam_group_membership" "Finance-Manager" {
  name = "Finance-Manager"

  users = ["Nick"]

  group = aws_iam_group.Finance-Manager.name
}

resource "aws_iam_group" "Finance-Manager" {
  name = "Finance-Manager"
  path = "/"

}

resource "aws_iam_user" "Nick1" {
  name = "Nick1"
  path = "/"
}



# Creating Data-Analyst Group and Users for the Data-Analyst group

resource "aws_iam_group_membership" "Data-Analyst" {
  name = "Data-Analyst"

  users = ["Sally1", "Tim1", "Tom1"]

  group = aws_iam_group.Data-Analyst.name
}

resource "aws_iam_group" "Data-Analyst" {
  name = "Data-Analyst"
  path = "/"

}

resource "aws_iam_user" "Sally1" {
  name = "Sally1"
  path = "/"
}
resource "aws_iam_user" "Tim1" {
  name = "Tim1"
  path = "/"
}
resource "aws_iam_user" "Tom1" {
  name = "Tom1"
  path = "/"
}