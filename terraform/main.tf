provider "aws" {
  region = "sa-east-1"
}

module "rds" {
  source                = "./modules/rds"
  db_name               = "flaskdb"
  db_username           = "flaskuser"
  db_password           = "Senha123!"
  sg_id                 = aws_security_group.rds_sg.id
  db_subnet_group_name  = "flask-subnet-group"
  private_subnet_ids    = [aws_subnet.private_a.id, aws_subnet.private_b.id]
}
