variable "snowflake_username" {
  type        = string
  description = "Snowflake username"
}

variable "snowflake_account_name" {
  type        = string
  description = "Snowflake account identifier"
}

variable "snowflake_organization_name" {
  type        = string
  description = "Snowflake organization name"
}

variable "snowflake_role" {
  type        = string
  description = "Snowflake role"
}

variable "password" {
  type        = string
  sensitive   = true
  description = "Snowflake user password"
}

# variable "snowflake_private_key_path" {
#   type        = string
#   description = "Path to the Snowflake private key file"
# }

variable "create_account_name" {
  type        = string
  description = "The name of the Snowflake user to create"
}               

variable "admin_name" {
  type        = string
  description = "The name of the Snowflake admin user to create"
}

variable "admin_password" {
  type        = string
  sensitive   = true
  description = "The password for the Snowflake admin user to create"
}

variable "email" {
  type        = string
  description = "The email for the Snowflake admin user to create"
}


