resource "aws_db_instance" "flask_rds" {
  identifier              = "flask-postgres-db"
  engine                  = "postgres"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  db_name                 = var.db_name
  username                = var.db_username
  password                = var.db_password
  skip_final_snapshot     = true
  publicly_accessible     = false
  multi_az                = false
  storage_encrypted       = false
  vpc_security_group_ids  = [var.sg_id]
  db_subnet_group_name    = var.db_subnet_group_name

  tags = {
    Name = "flask-rds"
  }
}

resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = var.db_subnet_group_name
  subnet_ids = var.private_subnet_ids

  tags = {
    Name = "rds-subnet-group"
  }
}


