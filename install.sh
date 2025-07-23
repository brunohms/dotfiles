#!/bin/bash

echo "🔧 Aguardando VS Code estar pronto..."

# Espera até o comando 'code' estar disponível (timeout de 30s)
for i in {1..30}; do
  if command -v code &> /dev/null; then
    echo "✅ VS Code CLI disponível, instalando extensão..."
    code --install-extension esbenp.prettier-vscode
    break
  fi
  sleep 1
done
