
#Create Admin resource group
resource "ibm_iam_access_group" "accessGroup" {
  name        = var.name
  description = "DO NOT DELETE: Full account priviledges"
}

#Set Access Policies for resources
resource "ibm_iam_access_group_policy" "resource_policy" {
  access_group_id = ibm_iam_access_group.accessGroup.id
  roles           = ["Viewer", "Operator", "Editor", "Administrator", "Reader", "Writer", "Manager"]
}

#Set Access Policies for account management services
resource "ibm_iam_access_group_policy" "resource_policy2" {
  access_group_id    = ibm_iam_access_group.accessGroup.id
  roles              = ["Viewer", "Operator", "Editor", "Administrator"]
  account_management = true
}


output "access_group_ids" {
  value = ibm_iam_access_group.accessGroup.id
}
