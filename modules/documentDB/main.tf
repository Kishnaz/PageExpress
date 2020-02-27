#working with modules -- for diff environment - in cloud-tool-fr account

provider "aws" {
  region = var.Region
  #change this to match your own aws profile settings
  profile = var.account_alias
}

resource "aws_docdb_cluster" "docdb" {
  cluster_identifier          = lower("a${var.ApplicationAssetInsightId}-${var.EnvironmentType}-${var.environment}")
  master_username             = var.username
  master_password             = var.password
  backup_retention_period     = 5
  #db_subnet_group_name        = var.db_subnet_group_name
  #vpc_security_group_ids      = var.vpc_security_group_ids
  skip_final_snapshot         = true
  tags                        = local.tags

}

resource "aws_docdb_cluster_instance" "cluster_instances" {
 # count              = 2
 # identifier         = lower("a${var.ApplicationAssetInsightId}-${var.EnvironmentType}-${count.index}")
  identifier         = lower("a${var.ApplicationAssetInsightId}-${var.EnvironmentType}")
  cluster_identifier = aws_docdb_cluster.docdb.id
  instance_class     = var.InstanceClass
  tags               = local.tags
}


