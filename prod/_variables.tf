variable "snowflake_username" {
  type        = string
  description = "Snowflake username"
}

variable "snowflake_account" {
  type        = string
  description = "Snowflake account identifier"
}

variable "snowflake_role" {
  type        = string
  description = "Snowflake role"
}

variable "snowflake_private_key_path" {
  type        = string
  description = "Path to the Snowflake private key file"
}

variable "database" {
  type    = string
  default = "TERRAFORM_DEMO_PROD"
}

variable "env_name" {
  type    = string
  default = "PROD"
}