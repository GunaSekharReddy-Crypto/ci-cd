#!/bin/bash

echo "Starting deployment..."

echo "Stopping old application..."
pkill node

echo "Pulling latest code..."
git pull origin main

echo "Starting application..."
nohup /usr/bin/node app.js > output.log 2>&1 &

echo "Deployment completed successfully"
