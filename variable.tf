variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "my-resource-group"
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
  default     = "Terraform-VNet"
}

variable "vnet_address_space" {
  description = "The address space for the Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "The name of the Subnet"
  type        = string
  default     = "Terraform-Subnet"
}

variable "subnet_address_prefix" {
  description = "The address prefix for the Subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "vm_name" {
  description = "The name of the Virtual Machine"
  type        = string
  default     = "Terraform-VM"
}

variable "admin_username" {
  description = "Admin Username for the Virtual Machine"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Admin Password for the Virtual Machine"
  type        = string
  sensitive   = true
}
