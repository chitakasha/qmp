#!/bin/bash

# Initialize_Repo.sh

# Define variables
REPO_NAME="qWizard_MVP"
GITHUB_USERNAME="YourGitHubUsername"
VM_DIRECTORY="/path/to/your/vm/directory"

# Initialize a new GitHub repository
echo "Initializing new GitHub repository: $REPO_NAME"
curl -u "$GITHUB_USERNAME" https://api.github.com/user/repos -d "{\"name\":\"$REPO_NAME\"}"

# Navigate to the directory where you want to clone the repository
cd $VM_DIRECTORY

# Clone the newly created repository to the virtual machine
echo "Cloning the repository to the virtual machine."
git clone "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"

# Navigate into the cloned repository
cd $REPO_NAME

# Create a README.md file
echo "# $REPO_NAME" >> README.md

# Add README.md to git
git add README.md

# Commit the changes
git commit -m "Initial commit: Add README.md"

# Push the changes to GitHub
git push origin main

echo "Repository $REPO_NAME initialized and cloned successfully."
