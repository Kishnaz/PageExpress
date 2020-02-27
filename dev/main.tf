provider "aws" {
  region = var.Region
  #change this to match your own aws profile settings
  profile = var.account_alias
}
module "documentDB" {
  source                    = "/Users/kishnaz/Desktop/Terraform tutorial/getting started terraform/m7/module/documentDB"
  Region                    = var.Region
  FinancialIdentifier       = var.FinancialIdentifier
  ResourceOwner             = var.ResourceOwner
  ApplicationAssetInsightId = var.ApplicationAssetInsightId
  EnvironmentType           = var.EnvironmentType
  account_alias             = var.account_alias
  project_name              = var.project_name
  environment               = var.environment
  username                  = var.username
  password                  = var.password
  #db_subnet_group_name      = var.db_subnet_group_name
  #vpc_security_group_ids    = var.vpc_security_group_ids
  InstanceClass             = var.InstanceClass

}



terraform {
  backend "s3" {
    bucket = "a205915-pageexpress-tfstatebackup"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
    profile = "desktop-sdlc-preprod"
    
    #dynamoDB locking
    dynamodb_table = "a205915-tf-state-locks"
 
  }
}