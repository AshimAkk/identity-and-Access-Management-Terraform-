# Creating S3 bucket 
resource "aws_s3_bucket" "iam-config-bucket" {
  bucket = "iam-config-bucket"

  tags = {
    Name        = "iam-config-bucket"
  }
}





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


resource "aws_iam_group" "Finance-Manager" {
  name = "Finance-Manager"
  path = "/"
}


resource "aws_iam_group" "Data Analyts" {
  name = "Data-Analyts"
  path = "/"
}




# creating Policies for Developers group 
# S3 full access
# CloudWatch Logs

resource "aws_iam_group_policy" "developer-group-policy" {
  name  = "developer-group-policy"
  group = aws_iam_group.Developers.name


  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3*",
        ]
        Effect   = "Allow"
        Resource = "[]"
      },
      {
        Action = [
          "s3*",
          "logs:*"
        ]
        Effect   = "Allow"
        Resource = []
      },
      {
        Action = [
          "ec2:*",
        ]
        Effect   = "Allow"
        Resource = []
      },
    ]
  })
}


resource "aws_iam_group_policy" "Operations-group-policy" {
  name  = "Operations-group-policy"
  group = aws_iam_group.Operations.name


  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:*",
        ]
        Effect   = "Allow"
        Resource = []
      },
      {
        Action = [
          "cloudwatch:*",
        ]
        Effect   = "Allow"
        Resource = []
      },
      {
        Action = [
          "rds:*",
        ]
        Effect   = "Allow"
        Resource = []
      },
    ]
  })
}


resource "aws_iam_group_policy" "Finance-manager-group-policy" {
  name  = "Finance-manager-group-policy"
  group = aws_iam_group.Finance-Manager.name


  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ce:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
      {
        Action = [
          "budgets:*",
        ]
        Effect   = "Allow"
        Resource = []
      },
    ]
  })
}



resource "aws_iam_group_policy" "Data-Analyts-group-policy" {
  name  = "Data-Analyts-group-policy"
  group = aws_iam_group.Data-Analyts.name


  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = ""
      },
    ]
  })
}


