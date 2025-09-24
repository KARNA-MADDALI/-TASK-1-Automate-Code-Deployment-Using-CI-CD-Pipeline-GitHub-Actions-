# Maddali Karna - DevSecOps Engineer Portfolio

Professional Node.js web app with CI/CD automation using GitHub Actions and Docker.

## Features
- Beautiful landing page
- Dockerized Node.js app
- CI/CD pipeline with automated DockerHub deployment

## Setup Locally
```bash
npm install
node server.js
```
Open: [http://localhost:3000](http://localhost:3000)

## Run with Docker
```bash
docker build -t your-dockerhub-username/nodejs-demo-app:local .
docker run -p 3000:3000 your-dockerhub-username/nodejs-demo-app:local
```
## CI/CD
Push to main branch → GitHub Actions builds and pushes Docker image.