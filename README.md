# 🚀 DevOps CI/CD Project – Docker + GitHub Actions + AWS EC2

## Overview
This project demonstrates a CI/CD pipeline for a Node.js web app:
- Containerized using **Docker**
- Automated build & push with **GitHub Actions**
- Deployed on **AWS EC2**

## Architecture
[Developer] → [GitHub Actions CI/CD] → [Docker Hub] → [AWS EC2 Deployment]

## Steps
1. Code pushed to GitHub → triggers GitHub Actions
2. Actions builds Docker image & pushes to Docker Hub
3. EC2 pulls latest image & runs container

## Tech Stack
- Node.js
- Docker
- GitHub Actions
- AWS EC2
