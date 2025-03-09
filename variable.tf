variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for VNet"
  type        = list(string)
}

variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
}

variable "subnet_address_prefix" {
  description = "Subnet Address Prefix"
  type        = list(string)
}

variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
}

variable "public_ip_name" {
  description = "Name of the Public IP"
  type        = string
}

variable "nic_name" {
  description = "Name of the Network Interface"
  type        = string
}

variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
}

variable "vm_size" {
  description = "Size of the Virtual Machine"
  type        = string
}

variable "admin_username" {
  description = "Username for VM Login"
  type        = string
}

variable "admin_password" {
  description = "Password for VM Login"
  type        = string
}
