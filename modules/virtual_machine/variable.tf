variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "environment" {
  type = string
}

variable "virtual_machine_name" {
  type = string
}

# az network vnet list
variable "subnet_id" {
  type = string
}

variable "private_ip_address_allocation" {
  type    = string
  default = "Dynamic"
}

variable "use_public_ip" {
  type    = bool
  default = false
}

variable "public_ip_address_allocation" {
  type    = string
  default = "Dynamic" # "Static
}

variable "vm_size" {
  type = string
  #default = "Standard_DS1_v2" # $2.3713/hr
  default = "Standard_B1ls" # $0.1984/hr
}

# Storage image

variable "storage_image_publisher" {
  type    = string
  default = "Canonical"
}

variable "storage_image_offer" {
  type    = string
  default = "UbuntuServer"
}

variable "storage_image_sku" {
  type    = string
  default = "18.04-LTS"
}

variable "storage_image_version" {
  type    = string
  default = "latest"
}

variable "username" {
  type    = string
  default = "chechia"
}

variable "ssh_key_file_path" {
  type    = string
  default = "~/.ssh/id_rsa.pub"
}
