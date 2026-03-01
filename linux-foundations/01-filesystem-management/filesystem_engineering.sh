#!/bin/bash

# Author: Esa Salam
# Repository: systems-engineering-labs
# Module: Filesystem Management
# Objective: Safely create, organise and back up files in a structured environment

set -e  # Exit immediately if a command fails

echo "Starting filesystem engineering module..."

#Create structured directories
BASE_DIR="$HOME/engineering_workspace"
PROJECT_DIR="$BASE_DIR/project_alpha"
mkdir -p "$PROJECT_DIR"

# reate test files
touch "$PROJECT_DIR/config.txt"
touch "$PROJECT_DIR/data.txt"

# Backup config file with timestamp
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
cp "$PROJECT_DIR/config.txt" "$PROJECT_DIR/config_backup_$TIMESTAMP.txt"

#List directory with details
ls -lh "$PROJECT_DIR"

echo "Filesystem module complete."
