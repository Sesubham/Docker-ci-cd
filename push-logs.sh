#!/bin/bash
# Script to collect Docker logs and push them to GitHub

cd ~/Docker-ci-cd || exit 1   # Make sure we are inside the repo

# Auto-detect container ID from image name
IMAGE_NAME="subham743/devops-app:latest"
CONTAINER_ID=$(docker ps -q --filter ancestor=$IMAGE_NAME)

if [ -z "$CONTAINER_ID" ]; then
  echo "❌ No running container found for image: $IMAGE_NAME"
  exit 1
fi

echo "✅ Found container: $CONTAINER_ID"

# Create logs folder if not exists
mkdir -p logs

# File to save logs (timestamped)
LOG_FILE="logs/logs_$(date +%Y%m%d_%H%M%S).txt"

# Step 1: Collect logs
docker logs $CONTAINER_ID > $LOG_FILE 2>&1

# Step 2: Also copy as latest
cp $LOG_FILE docker_logs.txt

# Step 3: Commit & Push
git add docker_logs.txt $LOG_FILE
git commit -m "Update logs on $(date)"
git push origin main

