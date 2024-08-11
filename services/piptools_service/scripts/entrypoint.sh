#!/bin/bash

# Function to run the application
run_application() {
  uvicorn main:app --host 0.0.0.0 --port 8003 --reload
}

# Run the application
run_application