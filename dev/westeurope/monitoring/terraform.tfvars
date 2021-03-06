
# For more info look at the README.md file of the module.

terragrunt = {
   dependencies {
    paths = [
      "../resource_group"
    ]
  }

  terraform {
    source = "git::git@github.com:teamdigitale/io-infrastructure-modules.git//azurerm_monitor_action_group"
  }

  # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }
}

# Monitoring action group module variables
azurerm_monitor_action_group_short_name                   = "mnt-ag-01"
azurerm_monitor_action_group_email_receiver_name          = "admins"
azurerm_monitor_action_group_email_receiver_email_address = "io-alerts@teamdigitale.governo.it"
azurerm_monitor_action_group_name_suffix                  = "01"
