output "private_subnet_ids" {
  value = [
    aws_subnet.private_a.id,
    aws_subnet.private_b.id
  ]
}

output "rds_sg_id" {
  value = aws_security_group.rds_sg.id
}

output "rds_endpoint" {
  value = module.rds.rds_endpoint
}

