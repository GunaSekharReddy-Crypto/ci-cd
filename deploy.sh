#!/bin/bash

echo "Pulling latest code..."
git pull origin main

echo "Stopping old app..."
pkill node

echo "Starting new app..."
nohup node app.js > output.log 2>&1 &
