terraform {
  required_version = ">= 1.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  
  backend "s3" {
    # Uncomment and configure for remote state storage
    # bucket = "your-terraform-state-bucket"
    # key    = "two-tier-architecture/terraform.tfstate"
    # region = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
  
  default_tags {
    tags = {
      Project     = "two-tier-architecture"
      Environment = var.environment
      ManagedBy   = "terraform"
    }
  }
} 