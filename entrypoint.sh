#!/bin/bash

/bin/ollama serve &
pid=$!

sleep 5

if ! ollama list | grep -q "deepseek-r1:32b"; then
  echo "[Ollama] Baixando modelo deepseek-r1:32b..."
  ollama pull deepseek-r1:32b
else
  echo "[Ollama] Modelo já está instalado localmente."
fi

wait $pid