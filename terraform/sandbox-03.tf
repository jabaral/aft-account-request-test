# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "sandbox_account_03" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "jabaral+ct_sandbox_03_testing@amazon.com"
    AccountName  = "sandbox-account-03"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail     = "jabaral+ct_sandbox_03_testing@amazon.com"
    SSOUserFirstName = "Johan"
    SSOUserLastName  = "Baron"
  }

  account_tags = {
    "ABC:Owner"       = "jabaral+ct_sandbox_03_testing@amazon.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Sandbox"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Johan Baron"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

#   account_customizations_name = "sandbox-customizations"
}
