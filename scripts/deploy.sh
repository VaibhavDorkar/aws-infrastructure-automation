#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

echo "======================================="
echo " AWS Infrastructure Automation"
echo "======================================="

echo ""
echo "Step 1: Initializing Terraform..."
cd "$PROJECT_ROOT/terraform"
terraform init

echo ""
echo "Step 2: Creating Infrastructure..."
terraform apply -auto-approve

echo ""
echo "Step 3: Updating Ansible Inventory..."
bash "$SCRIPT_DIR/update_inventory.sh"

echo ""
echo "Step 4: Running Ansible Playbook..."
cd "$PROJECT_ROOT/ansible"
ansible-playbook -i inventory.ini install-nginx.yml

echo ""
echo "======================================="
echo " Deployment Completed Successfully!"
echo "======================================="
