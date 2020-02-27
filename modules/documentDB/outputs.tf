output "dbmaster_arn" { 
    value = aws_docdb_cluster_instance.cluster_instances.arn
    }

output "dbmaster_address" { 
    value = aws_docdb_cluster_instance.cluster_instances.endpoint
    }

