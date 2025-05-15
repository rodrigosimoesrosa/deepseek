#!/bin/bash

/bin/ollama serve &
pid=$!

sleep 5

echo "> Download deepseek r1:32b model..."
ollama pull deepseek-r1:32b

wait $pid