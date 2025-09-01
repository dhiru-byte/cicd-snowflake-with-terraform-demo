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

variable "database" {
  type    = string
  default = "TERRAFORM_DEMO_STAGING"
}

variable "env_name" {
  type    = string
  default = "STAGING"
}
