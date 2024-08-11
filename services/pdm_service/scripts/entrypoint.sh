#!/bin/bash

# Function to run the application
run_application() {
  pdm run uvicorn main:app --host 0.0.0.0 --port 8002 --reload
}

# Run the application
run_application