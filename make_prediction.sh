#!/usr/bin/env bash

PORT=5000
echo "Port: $PORT"

# POST method predict
curl -X POST -F image=@dog.jpg http://localhost:$PORT/predict
