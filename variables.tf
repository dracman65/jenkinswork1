###################################
##           Variables           ##
###################################

variable "azurerm_resource_group" {
  description = "The name of the resource group in which the resources will be created"
  default     = "TF-CA-DD-2"
}

variable "location" {
  description = "The location where resources will be created"
  default     = "centralus"
}

#################################
#        Constraint
#################################
# variable "location" {
#   validation {
#     condition     = can(regex("^eastus2", var.location))
#     error_message = "The location should be in EAST US 2."
#   }
# }
