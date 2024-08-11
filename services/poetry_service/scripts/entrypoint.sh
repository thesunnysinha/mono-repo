#!/bin/bash

# Function to run the application
run_application() {
  poetry run uvicorn main:app --host 0.0.0.0 --port 8001 --reload
}

# Run the application
run_application