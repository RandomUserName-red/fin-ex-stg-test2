# AWS Terraform Demo

This repository demonstrates a sample AWS Infrastructure-as-Code (IaC) workflow using Terraform.  
It also showcases a Docker-based application build pipeline and a couple of additional automated workflows.

## Overview

1. **Infrastructure Validation**  
   - Triggered on pull requests targeting `main`, performs a Terraform Plan to validate proposed changes.

2. **Infrastructure Deployment**  
   - Triggered automatically after successful Validation workflow, has elevated permissions (e.g., real AWS credentials) to apply changes in AWS.

3. **Build Pipeline (Self-Hosted Runner)**  
   - Builds a Docker image for the project’s application. Runs on a private (self-hosted) runner to simulate large/complex builds.

4. **Security Scan**  
   - Performs minimal-permission scanning (e.g., static analysis or vulnerability checks) on pull requests.

5. **Issue Manager**  
   - Triggered by comments on issues or pull requests (e.g., labeling, notifications).

### Project Components

- **Terraform Configuration** (`main.tf`)  
  Declares an AWS S3 bucket (example) with tags and a private ACL.
  
- **Dockerfile**  
  Contains instructions to build a simple Docker container for an application (e.g., a microservice).

- **GitHub Actions**  
  Multiple workflows that handle validation, deployment, builds, scanning, and issue comment automation.
