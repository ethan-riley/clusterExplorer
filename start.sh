#!/bin/bash

# Start backend
cd backend
python3.11 -m pip install -r requirements.txt
python3.11 -m uvicorn main:app --reload &

# Start frontend
cd ../frontend
npm install
npm start &

wait