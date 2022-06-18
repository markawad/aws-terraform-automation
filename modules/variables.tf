variable "user_name" {
  type = string
  description = "Name of the user to be created."
}

variable "group_name" {
  type = string
  description = "Name of the group to be created."
}

variable "policy_name" {
  type = string
  description = "Policy arn to be attached."
}
