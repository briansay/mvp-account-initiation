variable "users" {
  type    = list(any)
  default = ["brian.say2@uk.ibm.com"]
}

variable "access_groups" {
  type    = list(any)
  default = ["test"]
}
