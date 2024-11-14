
# Creating Secrets manager 

resource "aws_secretsmanager_secret" "IAM-user-credentials" {
  name = "IAM-user-credentials"
  recovery_window_in_days = 7
}