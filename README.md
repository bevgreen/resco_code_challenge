# RESCO Code Challenge

This project is a Ruby on Rails full-stack app with a frontend and backend service for managing items.

## Dockerized Quick Start
```shell
docker-compose up --build
```
- View the frontend at [http://localhost:3001](http://localhost:3001) (note https will not work with current Ruby configuration)
- curl the backend at `curl http://localhost:3000/api/v1/items`

## Table of Contents

- [Project Overview](#project-overview)
- [Ruby Version](#ruby-version)
- [System Dependencies](#system-dependencies)
- [Configuration](#configuration)
- [Database Creation](#database-creation)
- [Database Initialization](#database-initialization)
- [Running the App](#running-the-app)
- [Running Tests](#running-tests)
- [Services](#services)


## Project Overview

This repository contains two Rails services:

1. **Frontend** – Displays items, includes:
   - Items list page
   - Item detail page
   - Form to create a new item
2. **Backend** – Provides API endpoints and database:
   - `GET /api/v1/items`
   - `GET /api/v1/items/:id`
   - `POST /api/v1/items`

Items have the following attributes:

- `name`
- `description`
- `number` (assigned automatically)
- `status` (Available, Decommissioned, Expired)
- `image` (URL)

## Ruby Version

ruby 3.2.2

## System Dependencies

- Rails 7.1.6
- PostgreSQL (or SQLite for local testing)
- TailwindCSS (frontend styling)
- Faraday (frontend API requests)

## Configuration

Update any environment variables if needed:

BACKEND_URL=http://localhost:3000/api/v1/items

Frontend expects the backend to run on `localhost:3000`.

## Database Creation

From the backend directory:

rails db:create
rails db:migrate

## Database Initialization

To seed sample data:

rails db:seed

## Running the App

There is a shell script to set up and run both services at once:


```shell
./start_app.sh
```

This script will:

1. Install gems for frontend and backend.
2. Create, migrate, and seed the backend database.
3. Start the backend on port `3000`.
4. Start the frontend on port `3001`.

You can access:

- Frontend: [http://localhost:3001](http://localhost:3001)
- Backend API: [http://localhost:3000/api/v1/items](http://localhost:3000/api/v1/items)

To run only one service manually:

**Backend:**

cd backend
bundle install
rails server -p 3000

**Frontend:**

cd frontend
bundle install
rails server -p 3001

## Running Tests

### Backend

From the `backend` directory:

bundle exec rspec

This includes:

- Model validation tests
- API request tests (GET / POST)

## Services

- No external job queues or cache servers needed for this project.
- Backend and frontend communicate via REST API.

