
#Invite users
resource "ibm_iam_user_invite" "invite_user" {
  users         = var.users
  access_groups = var.access_groups
  classic_infra_roles {
    permission_set = "superuser"
  }
}
