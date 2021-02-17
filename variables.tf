variable "ibmcloud_api_key" {
  type = string
}

variable "iaas_classic_username" {
  type = string
}

variable "iaas_classic_api_key" {
  type = string
}


variable "access_group_name" {
  type = string
}

variable "users" {
  type = list(any)
}
