# SkyLearn DevOps

A production-style DevOps engineering project built from the ground up to demonstrate Linux administration, AWS infrastructure, automation, containerization, CI/CD, Kubernetes, Infrastructure as Code, monitoring, and security.

---

# Project Goals

This repository documents the complete lifecycle of building and managing a modern cloud infrastructure.

The project emphasizes:

- Linux Administration
- AWS Cloud
- DevOps Automation
- Infrastructure as Code
- Containerization
- CI/CD
- Kubernetes
- Monitoring & Logging
- Security Hardening
- Production Best Practices

---

## AWS Architecture

SkyLearn is deployed on AWS using a highly available and scalable architecture.

### Infrastructure Components

- Custom VPC
- Public & Private Subnets across 2 Availability Zones
- Internet Gateway
- NAT Gateway
- Security Groups & Network ACLs
- Application Load Balancer
- EC2 Auto Scaling Group
- Launch Templates
- Golden AMI
- Amazon Route 53
- Amazon S3 (Automated Backups)
- Amazon CloudWatch
- Amazon SNS
- IAM Roles & Policies

```
User
 │
 ▼
Route 53
 │
 ▼
Application Load Balancer
 │
 ├─────────────┐
 ▼             ▼
EC2 (AZ1)   EC2 (AZ2)
 │             │
 └──────┬──────┘
        ▼
     S3 Backups

CloudWatch → SNS Email Alerts
```
---
# Technologies

- Amazon Linux 2023
- AWS EC2
- Nginx
- Docker
- Docker Compose
- Kubernetes
- Ansible
- Terraform
- Git
- GitHub
- GitHub Actions
- Jenkins
- Prometheus
- Grafana
- Bash
- Firewalld
- LVM

---

# Repository Structure

```text
ansible/
app/
assets/
aws/
cicd/
docker/
docs/
kubernetes/
monitoring/
scripts/
terraform/
```

---

# Current Progress

- [x] Linux Environment Setup
- [x] User & Group Management
- [x] Linux Permissions & ACLs
- [x] Package Management
- [x] Service Management
- [x] LVM Storage Management
- [x] SSH Configuration
- [x] Firewalld Configuration
- [x] Nginx Deployment
- [x] Bash Backup Automation

## Phase 2 – Infrastructure Automation
- [x] Ansible Roles
- [x] Inventory Management
- [x] Multi-node Deployment
- [x] Infrastructure as Code

## Phase 3 – AWS Infrastructure
- [x] Custom VPC
- [x] Public & Private Subnets
- [x] NAT Gateway
- [x] Application Load Balancer
- [x] EC2 Auto Scaling Group
- [x] Launch Templates
- [x] Golden AMI
- [x] S3 Automated Backups
- [x] CloudWatch Monitoring
- [x] SNS Alerts
- [x] IAM Roles & Policies

## Phase 4 – Version Control
- [x] Git Repository
- [x] GitHub Remote
- [x] Pull Requests
- [x] Branching Strategy
- [x] Merge Workflow

---

# Documentation

Complete documentation with commands, explanations, screenshots and troubleshooting will be available inside the **docs/** directory.

---

# Author

**Adithyan Suresh Kumar**

Cloud & DevOps Enthusiast
