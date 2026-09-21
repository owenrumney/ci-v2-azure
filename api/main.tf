provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  access_key                  = "mock"
  secret_key                  = "mock"
}

resource "aws_instance" "api" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.large"
}

resource "aws_db_instance" "api" {
  identifier           = "api-db"
  engine               = "postgres"
  instance_class       = "db.t3.medium"
  allocated_storage    = 100
  skip_final_snapshot  = true
}
