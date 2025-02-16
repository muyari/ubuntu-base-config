#!/bin/bash

# Define the path to your Ansible playbook
PLAYBOOK_PATH="./update_system.yaml"

# Define the path to your inventory file
INVENTORY_PATH="./hosts"

# Run the Ansible playbook
ansible-playbook -i "$INVENTORY_PATH" "$PLAYBOOK_PATH"

# Check if the playbook execution was successful
if [ $? -eq 0 ]; then
  echo "Ansible playbook executed successfully. Rebooting the system..."
  # Reboot the system
  sudo reboot
else
  echo "Ansible playbook execution failed. System will not reboot."
  exit 1
fi
