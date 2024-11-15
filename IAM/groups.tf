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