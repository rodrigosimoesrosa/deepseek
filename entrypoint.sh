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

# Baixa o modelo de código (phi3:mini) se necessário
if ! ollama list | grep -q "phi3:mini"; then
  echo "[Ollama] Baixando modelo phi3:mini..."
  ollama pull phi3:mini
else
  echo "[Ollama] Modelo phi3:mini já está instalado."
fi

# Aguarda o processo principal
wait $OLLAMA_PID
