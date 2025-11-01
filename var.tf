variable "db_username" {
  description = "Username for the RDS DB"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Password for the RDS DB"
  type        = string
  default     = "yourpassword"
}
