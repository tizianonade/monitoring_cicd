#!/bin/bash

# *** STEP TEST ***

# Create virtual environment
python3 -m venv venvtest

# Activate the virtual environment
source venvtest/bin/activate

# Install requirements
pip3 install -r jenkins/requirements_pytest.txt

# Run the test
python3 -m pytest -vs app/test_app.py

# deactivate virtual environment
deactivate

# Removes Virtual environment
rm -rf venvtest