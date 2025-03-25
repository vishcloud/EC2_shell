#!/bin/bash

# Define the instance ID (replace with your actual instance ID)
INSTANCE_ID="i-0950b1de7ce89f541"

# Terminate the instance
echo "Terminating instance $INSTANCE_ID..."
aws ec2 terminate-instances --instance-ids $INSTANCE_ID

# Wait for termination
echo "Waiting for instance $INSTANCE_ID to terminate..."
aws ec2 wait instance-terminated --instance-ids $INSTANCE_ID

echo "Instance $INSTANCE_ID terminated successfully."

