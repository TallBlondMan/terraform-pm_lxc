# Terraform code for creating linux caontainer
Configured to use Token API

Need to make sure that the group has `SDN_Use` permission or you won't be able to add a vlan tag

Also uses the version 2.7.4 as 2.9 has issues with new Proxmox version where the API token will not authenticate
