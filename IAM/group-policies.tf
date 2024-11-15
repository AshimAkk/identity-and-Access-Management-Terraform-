# # creating Policies for Developers group 
# # S3 full access
# # CloudWatch Logs

# resource "aws_iam_group_policy" "developer-group-policy" {
#   name  = "developer-group-policy"
#   group = aws_iam_group.Developers.name


#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = [
#           "s3*",
#         ]
#         Effect   = "Allow"
#         Resource = "[]"
#       },
#       {
#         Action = [
#           "s3*",
#           "logs:*"
#         ]
#         Effect   = "Allow"
#         Resource = []
#       },
#       {
#         Action = [
#           "ec2:*",
#         ]
#         Effect   = "Allow"
#         Resource = []
#       },
#     ]
#   })
# }


# resource "aws_iam_group_policy" "Operations-group-policy" {
#   name  = "Operations-group-policy"
#   group = aws_iam_group.Operations.name


#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = [
#           "ec2:*",
#         ]
#         Effect   = "Allow"
#         Resource = []
#       },
#       {
#         Action = [
#           "cloudwatch:*",
#         ]
#         Effect   = "Allow"
#         Resource = []
#       },
#       {
#         Action = [
#           "rds:*",
#         ]
#         Effect   = "Allow"
#         Resource = []
#       },
#     ]
#   })
# }


# resource "aws_iam_group_policy" "Finance-manager-group-policy" {
#   name  = "Finance-manager-group-policy"
#   group = aws_iam_group.Finance-Manager.name


#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = [
#           "ce:*",
#         ]
#         Effect   = "Allow"
#         Resource = "*"
#       },
#       {
#         Action = [
#           "budgets:*",
#         ]
#         Effect   = "Allow"
#         Resource = []
#       },
#     ]
#   })
# }



# resource "aws_iam_group_policy" "Data-Analyts-group-policy" {
#   name  = "Data-Analyts-group-policy"
#   group = aws_iam_group.Data-Analyts.name


#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = [
#         "s3:Get*",
#         "s3:List*",
#         "s3:Describe*"
#         ]
#         Effect   = "Allow"
#         Resource = []
#       },
#         {
#         Action = [
#         "rds:Describe*",
#         "rds:ListTagsForResource",
#         "ec2:DescribeAccountAttributes",
#         "ec2:DescribeAvailabilityZones",
#         "ec2:DescribeInternetGateways",
#         "ec2:DescribeSecurityGroups",
#         "ec2:DescribeSubnets",
#         "ec2:DescribeVpcAttribute",
#         "ec2:DescribeVpcs"
#         ]
#         Effect   = "Allow"
#         Resource = []
#       },
#     ]
#   })
# }