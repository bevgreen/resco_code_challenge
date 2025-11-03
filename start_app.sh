#!/bin/bash
set -e

echo "Starting full app setup..."

# -------------------
# Backend setup
# -------------------
echo "Setting up backend..."
cd backend

bundle install

rails db:drop db:create db:migrate db:seed

# Remove any leftover server PID
rm -f tmp/pids/server.pid

echo "Starting backend server on port 3000..."
rails server -b 0.0.0.0 -p 3000 &

BACKEND_PID=$!
cd ..

# -------------------
# Frontend setup
# -------------------
echo "Setting up frontend..."
cd frontend

bundle install

# Remove any leftover server PID
rm -f tmp/pids/server.pid

echo "Starting frontend server on port 3001..."
rails server -b 0.0.0.0 -p 3001 &

FRONTEND_PID=$!
cd ..

echo "Backend PID: $BACKEND_PID"
echo "Frontend PID: $FRONTEND_PID"
echo "App should now be running!"
echo "Frontend: http://localhost:3001"
echo "Backend:  http://localhost:3000"
echo "Press Ctrl+C to stop servers."

wait
