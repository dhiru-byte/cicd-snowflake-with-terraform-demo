terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "2.5.0"
    }
  }

  # backend "s3" {
  #   bucket         = "<your-bucket-name>"
  #   key            = "terraform-staging.tfstate"
  #   region         = "<bucket-region>"
  #   # Optional DynamoDB for state locking. See https://developer.hashicorp.com/terraform/language/settings/backends/s3 for details.
  #   # dynamodb_table = "terraform-state-lock-table"
  #   encrypt        = true
  #   role_arn       = "arn:aws:iam::<your-aws-account-no>:role/<terraform-s3-backend-access-role>"
  # }
}

# provider "snowflake" {
#   profile = "accountadmin"
# }


provider "snowflake" {
  user              = "DHIRENDRA"              #var.snowflake_username
  account_name      = "AP22595"                #var.snowflake_account_name
  organization_name = "DNJNTIC"                #var.snowflake_organization_name
  role              = "ACCOUNTADMIN"           #var.snowflake_role
  password          = "Odin1234Ragnar"         #var.password
}

