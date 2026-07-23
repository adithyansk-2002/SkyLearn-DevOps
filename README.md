# SkyLearn DevOps

A production-style DevOps project built from the ground up to demonstrate modern infrastructure deployment, Linux administration, AWS cloud services, containerization, CI/CD automation, and production deployment best practices.

SkyLearn is being developed incrementally, with each phase introducing real-world DevOps concepts while following industry-standard workflows.

---

# Project Goals

This repository documents the complete lifecycle of building, deploying, automating, and managing cloud infrastructure.

Current focus areas include:

- Linux Administration
- AWS Cloud Infrastructure
- Docker & Docker Compose
- Git & GitHub
- GitHub Actions CI/CD
- GitHub Container Registry (GHCR)
- Deployment Automation
- Production Rollback
- Infrastructure Documentation

Future phases will include:

- Kubernetes
- Terraform
- Prometheus
- Grafana
- Logging & Monitoring
- Security Hardening

---

# AWS Architecture

SkyLearn is currently deployed on AWS using a production-style architecture.

### Infrastructure Components

- Custom VPC
- Public & Private Subnets
- Internet Gateway
- NAT Gateway
- Security Groups
- EC2 Instance
- Application Load Balancer
- Amazon S3
- CloudWatch
- SNS
- IAM Roles & Policies

```text
                    User
                     │
                     ▼
          Application Load Balancer
                     │
                     ▼
              Amazon EC2 Instance
                     │
          ┌──────────┴──────────┐
          ▼                     ▼
      Flask Backend        Nginx Frontend
                │
                ▼
            MariaDB

CloudWatch ─────► SNS Alerts
```

---

# CI/CD Pipeline

Every push to the **main** branch automatically triggers the deployment pipeline.

```text
Developer
    │
    ▼
Git Push
    │
    ▼
GitHub Actions
    │
    ├── Repository Validation
    ├── Docker Image Build
    ├── Push Images to GHCR
    └── Deploy to AWS EC2
                │
                ▼
         Docker Compose
                │
                ▼
        Production Website
```

---

# Rollback Workflow

SkyLearn supports rolling back to previously deployed Docker images without rebuilding the application.

```text
GitHub Actions
        │
        ▼
Select Previous Image Version
        │
        ▼
Pull Versioned Images from GHCR
        │
        ▼
Docker Compose
        │
        ▼
Previous Production Version Restored
```

Rollback is performed using immutable Docker images stored in GitHub Container Registry and deployed through GitHub Actions.

---

# Technologies

## Operating System

- Amazon Linux 2023

## Cloud

- AWS EC2
- VPC
- IAM
- S3
- SNS
- CloudWatch
- Application Load Balancer

## Containerization

- Docker
- Docker Compose
- GitHub Container Registry (GHCR)

## Automation

- GitHub Actions
- Bash
- Ansible

## Web Stack

- Flask
- Nginx
- MariaDB

## Version Control

- Git
- GitHub

---

# Repository Structure

```text
SkyLearn-DevOps/
│
├── ansible/
├── app/
│   ├── backend/
│   ├── frontend/
│   └── database/
│
├── assets/
├── aws/
├── cicd/
├── docker/
├── docs/
├── kubernetes/
├── monitoring/
├── scripts/
├── terraform/
└── .github/
    └── workflows/
```

---

# Current Features

- Linux Server Administration
- AWS Infrastructure Deployment
- Multi-container Docker Application
- Docker Compose Orchestration
- Flask REST API
- Nginx Reverse Proxy
- MariaDB Database
- GitHub Actions CI/CD Pipeline
- Automatic Docker Image Build
- GitHub Container Registry Integration
- Automatic Deployment to AWS EC2
- Health Check Validation
- Commit SHA Image Versioning
- Production Rollback Workflow

---

# Project Progress

## Phase 1 – Linux Administration

- [x] User & Group Management
- [x] Linux Permissions
- [x] ACL Configuration
- [x] Package Management
- [x] Service Management
- [x] LVM Storage
- [x] SSH Configuration
- [x] Firewalld
- [x] Bash Automation

---

## Phase 2 – Infrastructure Automation

- [x] Ansible Inventory
- [x] Ansible Roles
- [x] Playbooks
- [x] Multi-node Deployment

---

## Phase 3 – AWS Infrastructure

- [x] Custom VPC
- [x] Public & Private Subnets
- [x] NAT Gateway
- [x] Application Load Balancer
- [x] EC2 Deployment
- [x] S3 Integration
- [x] CloudWatch
- [x] SNS Notifications
- [x] IAM Roles

---

## Phase 4 – Version Control

- [x] Git Repository
- [x] GitHub
- [x] Branching Strategy
- [x] Pull Requests
- [x] Merge Workflow

---

## Phase 5 – Containerization

- [x] Docker
- [x] Docker Compose
- [x] Multi-container Application
- [x] Flask Backend
- [x] Nginx Frontend
- [x] MariaDB
- [x] Container Networking

---

## Phase 6 – CI/CD

- [x] GitHub Actions
- [x] Repository Validation
- [x] Docker Image Build
- [x] GitHub Container Registry
- [x] Automatic Deployment
- [x] Health Checks
- [x] Commit SHA Image Versioning
- [x] Production Rollback

---

### Phase 7 – Container Orchestration

- [x] Kubernetes Cluster
- [x] Pod Management
- [x] Deployments
- [x] Services
- [x] ConfigMaps
- [x] Secrets
- [x] Persistent Volumes
- [x] Ingress Configuration
- [x] Application Scaling

---

### Phase 8 – Infrastructure as Code

- [x] Terraform
- [x] AWS Resource Provisioning
- [x] Modular Infrastructure Design
- [x] State Management
- [x] Reusable Infrastructure Modules

---

## Upcoming Phases

### Phase 9 – Monitoring & Logging

- [ ] Prometheus
- [ ] Grafana
- [ ] Centralized Logging
- [ ] Alerting Mechanism
- [ ] Monitoring Dashboards

---

### Phase 10 – Security & Best Practices

- [ ] Least-Privilege Access
- [ ] Secret Management
- [ ] SSL/TLS Implementation
- [ ] Backup & Recovery Planning
- [ ] High Availability Design
- [ ] Disaster Recovery Strategy

---

# Documentation

Detailed implementation guides, commands, troubleshooting steps, and architecture documentation will be available in the **docs/** directory.

---

# Author

**Adithyan Suresh Kumar**

Cloud & DevOps Enthusiast

---

# License

This project is licensed under the MIT License.
# trigger
