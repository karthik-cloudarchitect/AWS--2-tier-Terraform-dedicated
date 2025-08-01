# Two-Tier Architecture: ALB → EC2 → RDS (Terraform)

This repository contains the Terraform implementation of a two-tier web application architecture.

## Architecture Overview

```
Internet → ALB → EC2 (Auto Scaling Group) → RDS MySQL
```

## Components

- **Application Load Balancer (ALB)**: Distributes traffic across EC2 instances
- **EC2 Instances**: Run the web application in an Auto Scaling Group
- **RDS Database**: MySQL database for persistent data storage
- **VPC & Security Groups**: Network isolation and security

## Prerequisites

- AWS CLI configured
- Terraform installed (version >= 1.0)
- Python 3.8+
- MySQL client (for database testing)

## Project Structure

```
two-tier-terraform-dedicated/
├── README.md
├── requirements.txt
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
├── src/
│   └── app.py
├── tests/
│   └── test_app.py
└── userdata/
    └── install.sh
```

## Deployment

### Using Terraform CLI

1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

2. Initialize Terraform:
   ```bash
   terraform init
   ```

3. Plan the deployment:
   ```bash
   terraform plan
   ```

4. Deploy the infrastructure:
   ```bash
   terraform apply
   ```

### Using Terraform Cloud

1. Connect your repository to Terraform Cloud
2. Configure variables in Terraform Cloud
3. Run terraform apply through the web interface

## Testing

Run the tests:
```bash
pytest tests/
```

## Features

- Auto Scaling based on CPU utilization
- Multi-AZ RDS deployment
- Security groups with minimal required access
- Health checks and monitoring
- User data script for application installation
- Terraform state management

## Cleanup

```bash
terraform destroy
```

## API Endpoints

- `GET /` - Home page
- `GET /health` - Health check
- `GET /info` - Application info
- `GET /users` - List users
- `POST /users` - Create user
- `GET /users/{id}` - Get user
- `PUT /users/{id}` - Update user
- `DELETE /users/{id}` - Delete user

## Monitoring

- CloudWatch metrics for ALB and EC2
- RDS performance insights
- Auto Scaling alarms
- Application logs 