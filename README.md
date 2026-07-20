# 🚀 AWS Infrastructure Automation using Terraform & Ansible

[![Terraform](https://img.shields.io/badge/Terraform-v1.x-623CE4?logo=terraform&logoColor=white)](https://www.terraform.io/)
[![Ansible](https://img.shields.io/badge/Ansible-Automation-EE0000?logo=ansible&logoColor=white)](https://www.ansible.com/)
[![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?logo=amazonaws&logoColor=white)](https://aws.amazon.com/)
[![Linux](https://img.shields.io/badge/Linux-Ubuntu-E95420?logo=ubuntu&logoColor=white)](https://ubuntu.com/)
[![Git](https://img.shields.io/badge/Git-Version_Control-F05032?logo=git&logoColor=white)](https://git-scm.com/)

---

# 📖 Project Overview

This project demonstrates an end-to-end Infrastructure as Code (IaC) and Configuration Management workflow using **Terraform**, **Ansible**, **AWS EC2**, and **Linux**.

The primary objective of this project is to automate infrastructure provisioning and server configuration by following DevOps best practices.

Instead of manually launching and configuring servers, the entire deployment process is automated using Terraform and Ansible.

---

# 🎯 Project Objectives

- Automate AWS infrastructure provisioning
- Learn Infrastructure as Code (IaC)
- Learn Configuration Management
- Practice Linux administration
- Automate Nginx installation
- Implement Git & GitHub version control
- Build an industry-standard DevOps project

---

# 🏗 Project Architecture

```
                GitHub
                   │
                   ▼
            Ubuntu (WSL)
                   │
        ┌──────────┴──────────┐
        │                     │
        ▼                     ▼
   Terraform              Ansible
        │                     │
        ▼                     ▼
    AWS EC2  ─────────► Configure Server
        │                     │
        ▼                     ▼
   Security Group        Install Nginx
        │                     │
        └──────────────► Website
```

---

# 🛠 Technologies Used

| Technology | Purpose |
|------------|---------|
| AWS EC2 | Virtual Server |
| Terraform | Infrastructure as Code |
| Ansible | Configuration Management |
| Linux (Ubuntu WSL) | Development Environment |
| Git | Version Control |
| GitHub | Source Code Repository |
| Bash | Automation Scripts |
| SSH | Secure Remote Access |
| Nginx | Web Server |

---

# 📂 Project Structure

```
aws-infrastructure-automation/
│
├── terraform/
│   ├── backend.tf
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── terraform.tfvars
│   └── modules/
│       └── ec2/
│
├── ansible/
│   ├── inventory.ini
│   ├── install-nginx.yml
│   └── files/
│       └── index.html
│
├── scripts/
│
├── docs/
│
├── .gitignore
│
└── README.md
```

---

# ✨ Features

- Infrastructure provisioning using Terraform
- Modular Terraform configuration
- AWS EC2 deployment
- Security Group automation
- SSH-based server access
- Automated Nginx installation
- Infrastructure configuration using Ansible
- Git & GitHub integration
- Linux-based DevOps workflow

---

# 📋 Prerequisites

Before running this project, ensure the following are installed:

- Ubuntu (WSL) or Linux
- AWS CLI
- Terraform
- Ansible
- Git
- SSH
- AWS Account
- GitHub Account

---

# ⚙ Installation

Clone the repository:

```bash
git clone git@github.com:VaibhavDorkar/aws-infrastructure-automation.git

cd aws-infrastructure-automation
```

---

# 🚀 Terraform Deployment

Navigate to the Terraform directory.

```bash
cd terraform
```

Initialize Terraform.

```bash
terraform init
```

Validate configuration.

```bash
terraform validate
```

Preview infrastructure changes.

```bash
terraform plan
```

Create AWS infrastructure.

```bash
terraform apply
```

Destroy infrastructure.

```bash
terraform destroy
```

---

# ⚙ Ansible Configuration

Verify inventory.

```bash
ansible -i inventory.ini all -m ping
```

Run the playbook.

```bash
ansible-playbook -i inventory.ini install-nginx.yml
```

---

# 📈 Learning Outcomes

Through this project I learned:

- Infrastructure as Code
- Terraform modules
- AWS resource provisioning
- Ansible playbooks
- SSH authentication
- Linux administration
- Git workflows
- GitHub collaboration
- DevOps project organization
- Cloud automation

---

# 🔐 Security Best Practices

- Never commit `.tfstate` files.
- Never commit AWS credentials.
- Store sensitive variables securely.
- Use `.gitignore` to exclude generated files.
- Protect SSH private keys.

---

# 📌 Future Improvements

- Terraform Remote Backend (S3 + DynamoDB)
- Dynamic Ansible Inventory
- Docker Integration
- Kubernetes Deployment
- CI/CD using GitHub Actions
- Monitoring with CloudWatch
- Infrastructure Testing
- Multi-Environment Support (Dev, QA, Prod)

---

# 👨‍💻 Author

**Vaibhav Dorkar**

Master of Computer Applications (MCA)

Cloud | DevOps | AWS | Linux | Terraform | Ansible Enthusiast

GitHub:
https://github.com/VaibhavDorkar

---

# ⭐ Acknowledgements

This project was developed as part of my hands-on DevOps learning journey to gain practical experience with AWS, Terraform, Ansible, Linux, and Infrastructure Automation following industry best practices.
