#!/bin/bash
set -e

echo "[Ollama] Iniciando serviço..."
/bin/ollama serve &
OLLAMA_PID=$!

# Aguarda o serviço Ollama estar disponível
echo "[Ollama] Aguardando inicialização..."
sleep 5

# Baixa o modelo geral (r1:7b) se necessário
if ! ollama list | grep -q "deepseek-r1:7b"; then
  echo "[Ollama] Baixando modelo deepseek-r1:7b..."
  ollama pull deepseek-r1:7b
else
  echo "[Ollama] Modelo deepseek-r1:7b já está instalado."
fi

# Baixa o modelo de código (coder:7b) se necessário
if ! ollama list | grep -q "deepseek-coder:7b"; then
  echo "[Ollama] Baixando modelo deepseek-coder:7b..."
  ollama pull deepseek-coder:7b
else
  echo "[Ollama] Modelo deepseek-coder:7b já está instalado."
fi

# Aguarda o processo principal
wait $OLLAMA_PID
