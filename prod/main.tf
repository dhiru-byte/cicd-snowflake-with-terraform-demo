terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "2.5.0"
    }
  }


  backend "s3" {
    bucket         = "<your-bucket-name>"
    key            = "terraform-prod.tfstate"
    region         = "<bucket-region>"
    # Optional DynamoDB for state locking. See https://developer.hashicorp.com/terraform/language/settings/backends/s3 for details.
    # dynamodb_table = "terraform-state-lock-table"
    encrypt        = true
    role_arn       = "arn:aws:iam::<your-aws-account-no>:role/<terraform-s3-backend-access-role>"
  }
}

provider "snowflake" {
  user         = var.snowflake_username
  account_name = var.snowflake_account
  role         = var.snowflake_role
  private_key  = var.snowflake_private_key_path
}

module "snowflake_resources" {
  source              = "../modules/snowflake_resources"
  time_travel_in_days = 30
  database            = var.database
  env_name            = var.env_name
}