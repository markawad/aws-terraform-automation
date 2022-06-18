variable "user_name" {
  default = ""
}

module "user" {
  source = "../../modules"

  user_name = var.user_name
  group_name = "administrators"
  policy_name = "AdministratorAccess"
}

