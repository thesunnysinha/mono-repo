#!/bin/bash

wait_for_database() {
  scripts/wait-for-it.sh db:5432 -t 30
}

# Function to run the application
run_application() {
  uvicorn main:app --host 0.0.0.0 --port 8000 --reload
}

wait_for_database

# Run the application
run_application