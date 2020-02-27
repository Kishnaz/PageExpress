#working with modules -- for diff environment - in cloud-tool-fr account 

variable "Region" {
  type        = string
  description = "Region that we wish to deploy into."
}
variable "FinancialIdentifier" {
  type        = number
  description = "Financial Identifier that running costs should be attributed to."
}

variable "ResourceOwner" {
  type        = string
  description = "Name of the resource owner"
}

variable "ApplicationAssetInsightId" {
  type        = number
  description = "Application Asset ID - See https://assets.int.thomsonreuters.com for more details"
}

variable "EnvironmentType" {
  type        = string
  description = "Type of the environment. Allowed values are DEVELOPMENT,NONPROD,PROD"
}

variable "account_alias" {
  type        = string
  description = "Profile that needs to be used."
}
variable "project_name" {
  type        = string
  description = "Project Name to be used."
}
variable "environment" {
  type        = string
  description = "Environment."
}
variable "username" {
  type        = string
  description = "Username."
}
variable "password" {
  type        = string
  description = "Password."
}
/*
variable "db_subnet_group_name" {
  type        = string
  description = "DB Subnet Group Name."
}
*/

variable "InstanceClass"{
  description = "Instance class"
}


