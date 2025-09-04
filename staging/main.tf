## Minimal
resource "snowflake_account" "minimal" {
  name                 = "terraform-admin"
  admin_name           = "dhrnd.ydv@gmail.com"
  admin_password       = "Thor4321Ragnar"
  email                = "TerraformTest"
  edition              = "STANDARD"
  grace_period_in_days = 3
}