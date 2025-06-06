variable "db_name" {}
variable "db_username" {}
variable "db_password" {}
variable "sg_id" {}
variable "db_subnet_group_name" {}
variable "private_subnet_ids" {
  type = list(string)
}
