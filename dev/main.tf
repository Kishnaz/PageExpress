provider "aws" {
  region = var.Region
  #change this to match your own aws profile settings
  profile = var.account_alias
}
module "documentDB" {
  source                    = "/Users/kishnaz/Desktop/Terraform tutorial/getting started terraform/pageExpress/modules/documentDB"
  Region                    = var.Region
  ResourceOwner             = var.ResourceOwner
  ApplicationAssetInsightId = var.ApplicationAssetInsightId
  Environment               = var.Environment
  account_alias             = var.account_alias
  ProjectName               = var.ProjectName
  subEnv                    = var.subEnv
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
