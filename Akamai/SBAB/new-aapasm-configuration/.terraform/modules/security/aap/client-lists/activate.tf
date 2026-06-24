resource "akamai_clientlist_activation" "my_activation" {
  list_id  = akamai_clientlist_list.client-lists-rcbypass-list.id
  version  = 1
  network  = "STAGING"
  comments = "Activating the rate control bypass list as terraform requires that the list be active before using in rate policies"
}