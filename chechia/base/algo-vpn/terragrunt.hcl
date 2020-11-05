terraform {
  source = "../../../modules//virtual_machine"
}

include {
  path = find_in_parent_folders()  
}

inputs = {
  virtual_machine_name = "algo-vpn"
  subnet_id = "/subscriptions/${get_env("SUBSCRIPTION_ID")}/resourceGroups/base/providers/Microsoft.Network/virtualNetworks/base-network/subnets/general-purpose"
  use_public_ip = true
  vm_size = "Standard_B1ls" # $0.1984/hr
}
