provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "rds_sql" {
  allocated_storage    = 20
  engine               = "mysql" # or "postgres"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  publicly_accessible  = true
}
