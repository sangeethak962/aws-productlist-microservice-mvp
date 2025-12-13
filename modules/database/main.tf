// DB subnet group using provided private subnet
resource "aws_db_subnet_group" "this" {
  name       = "${var.name}-dbsubnet"
  subnet_ids = [var.subnet_id]
  tags = merge(var.tags, { Name = "${var.name}-dbsubnet" })
}

// Security group that allows the app SG to talk to Postgres (5432)
resource "aws_security_group" "db_sg" {
  name   = "${var.name}-db-sg"
  vpc_id = var.vpc_id

  ingress {
    description     = "Postgres from app"
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [var.app_security_group_id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(var.tags, { Name = "${var.name}-db-sg" })
}

// RDS Postgres instance (single-AZ for MVP)
resource "aws_db_instance" "postgres" {
  identifier              = "${var.name}-db"
  engine                  = "postgres"
  instance_class          = var.instance_class
  allocated_storage       = var.allocated_storage
  username                = var.username
  password                = var.password
  db_subnet_group_name    = aws_db_subnet_group.this.name
  vpc_security_group_ids  = [aws_security_group.db_sg.id]
  skip_final_snapshot     = true
  publicly_accessible     = false
  multi_az                = false
  tags = merge(var.tags, { Name = "${var.name}-db" })
}
