#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

echo "Getting EC2 Public IP from Terraform..."

IP=$(cd "$PROJECT_ROOT/terraform" && terraform output -raw public_ip)

cat > "$PROJECT_ROOT/ansible/inventory.ini" <<EOF
[web]
$IP ansible_user=ec2-user ansible_ssh_private_key_file=~/.ssh/ansible-key.pem
EOF

echo "Inventory updated successfully!"
echo "Target IP: $IP"
