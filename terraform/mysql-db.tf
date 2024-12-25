# resource "random_password" "password" {
#   length           = 16
#   special          = true
#   override_special = "!#$%&*()-_=+[]{}<>:?"
# }

# resource "aws_ssm_parameter" "password" {
#   name  = "/pek/db/password"
#   type  = "SecureString"
#   value = random_password.password.result
# }

# resource "aws_db_instance" "default" {
#   allocated_storage    = 10
#   db_name              = "pek"
#   engine               = "mysql"
#   engine_version       = "8.0"
#   instance_class       = "db.t3.micro"
#   username             = "eugene"
#   password             = random_password.password.result
#   parameter_group_name = "default.mysql8.0"
#   skip_final_snapshot  = true
# }